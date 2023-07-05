﻿using System.Net;

namespace ET.Server
{
    [Invoke((long)SceneType.Realm)]
    public class FiberInit_Realm: AInvokeHandler<FiberInit, ETTask>
    {
        public override async ETTask Handle(FiberInit fiberInit)
        {
            Scene root = fiberInit.Fiber.Root;
            root.AddComponent<MailBoxComponent, MailBoxType>(MailBoxType.UnOrderedMessage);
            root.AddComponent<ActorSenderComponent, SceneType>(SceneType.NetInner);
            root.AddComponent<ActorRecverComponent>();
            StartSceneConfig startSceneConfig = StartSceneConfigCategory.Instance.Get(root.Fiber.Id);
            root.AddComponent<NetServerComponent, IPEndPoint>(startSceneConfig.InnerIPPort);

            await ETTask.CompletedTask;
        }
    }
}