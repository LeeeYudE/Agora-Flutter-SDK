//
//  RtcEngine.swift
//  RCTAgora
//
//  Created by LXH on 2020/4/13.
//  Copyright (c) 2020 Syan. All rights reserved.
//

import Foundation
import AgoraRtcKit

protocol RtcEngineInterface:
        RtcEngineUserInfoInterface,
        RtcEngineAudioInterface,
        RtcEngineVideoInterface,
        RtcEngineAudioMixingInterface,
        RtcEngineAudioEffectInterface,
        RtcEngineVoiceChangerInterface,
        RtcEngineVoicePositionInterface,
        RtcEnginePublishStreamInterface,
        RtcEngineMediaRelayInterface,
        RtcEngineAudioRouteInterface,
        RtcEngineEarMonitoringInterface,
        RtcEngineDualStreamInterface,
        RtcEngineFallbackInterface,
        RtcEngineTestInterface,
        RtcEngineMediaMetadataInterface,
        RtcEngineWatermarkInterface,
        RtcEngineEncryptionInterface,
        RtcEngineAudioRecorderInterface,
        RtcEngineInjectStreamInterface,
        RtcEngineCameraInterface,
        RtcEngineStreamMessageInterface {
    func create(_ params: NSDictionary, _ callback: Callback)

    func destroy(_ callback: Callback)

    func setChannelProfile(_ params: NSDictionary, _ callback: Callback)

    func setClientRole(_ params: NSDictionary, _ callback: Callback)

    func joinChannel(_ params: NSDictionary, _ callback: Callback)

    func switchChannel(_ params: NSDictionary, _ callback: Callback)

    func leaveChannel(_ callback: Callback)

    func renewToken(_ params: NSDictionary, _ callback: Callback)

    @available(*, deprecated)
    func enableWebSdkInteroperability(_ params: NSDictionary, _ callback: Callback)

    func getConnectionState(_ callback: Callback)
    
    func sendCustomReportMessage(_ params: NSDictionary, _ callback: Callback)

    func getCallId(_ callback: Callback)

    func rate(_ params: NSDictionary, _ callback: Callback)

    func complain(_ params: NSDictionary, _ callback: Callback)

    func setLogFile(_ params: NSDictionary, _ callback: Callback)

    func setLogFilter(_ params: NSDictionary, _ callback: Callback)

    func setLogFileSize(_ params: NSDictionary, _ callback: Callback)

    func setParameters(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineUserInfoInterface {
    func registerLocalUserAccount(_ params: NSDictionary, _ callback: Callback)

    func joinChannelWithUserAccount(_ params: NSDictionary, _ callback: Callback)

    func getUserInfoByUserAccount(_ params: NSDictionary, _ callback: Callback)

    func getUserInfoByUid(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineAudioInterface {
    func enableAudio(_ callback: Callback)

    func disableAudio(_ callback: Callback)

    func setAudioProfile(_ params: NSDictionary, _ callback: Callback)

    func adjustRecordingSignalVolume(_ params: NSDictionary, _ callback: Callback)

    func adjustUserPlaybackSignalVolume(_ params: NSDictionary, _ callback: Callback)

    func adjustPlaybackSignalVolume(_ params: NSDictionary, _ callback: Callback)

    func enableLocalAudio(_ params: NSDictionary, _ callback: Callback)

    func muteLocalAudioStream(_ params: NSDictionary, _ callback: Callback)

    func muteRemoteAudioStream(_ params: NSDictionary, _ callback: Callback)
    
    func openEncodeData(_ params: NSDictionary, _ callback: Callback)

    func muteAllRemoteAudioStreams(_ params: NSDictionary, _ callback: Callback)

    func setDefaultMuteAllRemoteAudioStreams(_ params: NSDictionary, _ callback: Callback)

    func enableAudioVolumeIndication(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineVideoInterface {
    func enableVideo(_ callback: Callback)

    func disableVideo(_ callback: Callback)

    func setVideoEncoderConfiguration(_ params: NSDictionary, _ callback: Callback)

    func startPreview(_ callback: Callback)

    func stopPreview(_ callback: Callback)

    func enableLocalVideo(_ params: NSDictionary, _ callback: Callback)

    func muteLocalVideoStream(_ params: NSDictionary, _ callback: Callback)

    func muteRemoteVideoStream(_ params: NSDictionary, _ callback: Callback)

    func muteAllRemoteVideoStreams(_ params: NSDictionary, _ callback: Callback)

    func setDefaultMuteAllRemoteVideoStreams(_ params: NSDictionary, _ callback: Callback)

    func setBeautyEffectOptions(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineAudioMixingInterface {
    func startAudioMixing(_ params: NSDictionary, _ callback: Callback)

    func stopAudioMixing(_ callback: Callback)

    func pauseAudioMixing(_ callback: Callback)

    func resumeAudioMixing(_ callback: Callback)

    func adjustAudioMixingVolume(_ params: NSDictionary, _ callback: Callback)

    func adjustAudioMixingPlayoutVolume(_ params: NSDictionary, _ callback: Callback)

    func adjustAudioMixingPublishVolume(_ params: NSDictionary, _ callback: Callback)

    func getAudioMixingPlayoutVolume(_ callback: Callback)

    func getAudioMixingPublishVolume(_ callback: Callback)

    func getAudioMixingDuration(_ callback: Callback)

    func getAudioMixingCurrentPosition(_ callback: Callback)

    func setAudioMixingPosition(_ params: NSDictionary, _ callback: Callback)

    func setAudioMixingPitch(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineAudioEffectInterface {
    func getEffectsVolume(_ callback: Callback)

    func setEffectsVolume(_ params: NSDictionary, _ callback: Callback)

    func setVolumeOfEffect(_ params: NSDictionary, _ callback: Callback)

    func playEffect(_ params: NSDictionary, _ callback: Callback)

    func stopEffect(_ params: NSDictionary, _ callback: Callback)

    func stopAllEffects(_ callback: Callback)

    func preloadEffect(_ params: NSDictionary, _ callback: Callback)

    func unloadEffect(_ params: NSDictionary, _ callback: Callback)

    func pauseEffect(_ params: NSDictionary, _ callback: Callback)

    func pauseAllEffects(_ callback: Callback)

    func resumeEffect(_ params: NSDictionary, _ callback: Callback)

    func resumeAllEffects(_ callback: Callback)

    func setAudioSessionOperationRestriction(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineVoiceChangerInterface {
    func setLocalVoiceChanger(_ params: NSDictionary, _ callback: Callback)

    func setLocalVoiceReverbPreset(_ params: NSDictionary, _ callback: Callback)

    func setLocalVoicePitch(_ params: NSDictionary, _ callback: Callback)

    func setLocalVoiceEqualization(_ params: NSDictionary, _ callback: Callback)

    func setLocalVoiceReverb(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineVoicePositionInterface {
    func enableSoundPositionIndication(_ params: NSDictionary, _ callback: Callback)

    func setRemoteVoicePosition(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEnginePublishStreamInterface {
    func setLiveTranscoding(_ params: NSDictionary, _ callback: Callback)

    func addPublishStreamUrl(_ params: NSDictionary, _ callback: Callback)

    func removePublishStreamUrl(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineMediaRelayInterface {
    func startChannelMediaRelay(_ params: NSDictionary, _ callback: Callback)

    func updateChannelMediaRelay(_ params: NSDictionary, _ callback: Callback)

    func stopChannelMediaRelay(_ callback: Callback)
}

protocol RtcEngineAudioRouteInterface {
    func setDefaultAudioRoutetoSpeakerphone(_ params: NSDictionary, _ callback: Callback)

    func setEnableSpeakerphone(_ params: NSDictionary, _ callback: Callback)

    func isSpeakerphoneEnabled(_ callback: Callback)
}

protocol RtcEngineEarMonitoringInterface {
    func enableInEarMonitoring(_ params: NSDictionary, _ callback: Callback)

    func setInEarMonitoringVolume(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineDualStreamInterface {
    func enableDualStreamMode(_ params: NSDictionary, _ callback: Callback)

    func setRemoteVideoStreamType(_ params: NSDictionary, _ callback: Callback)

    func setRemoteDefaultVideoStreamType(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineFallbackInterface {
    func setLocalPublishFallbackOption(_ params: NSDictionary, _ callback: Callback)

    func setRemoteSubscribeFallbackOption(_ params: NSDictionary, _ callback: Callback)

    func setRemoteUserPriority(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineTestInterface {
    func startEchoTest(_ params: NSDictionary, _ callback: Callback)

    func stopEchoTest(_ callback: Callback)

    func enableLastmileTest(_ callback: Callback)

    func disableLastmileTest(_ callback: Callback)

    func startLastmileProbeTest(_ params: NSDictionary, _ callback: Callback)

    func stopLastmileProbeTest(_ callback: Callback)
}

protocol RtcEngineMediaMetadataInterface {
    func registerMediaMetadataObserver(_ callback: Callback)

    func unregisterMediaMetadataObserver(_ callback: Callback)

    func setMaxMetadataSize(_ params: NSDictionary, _ callback: Callback)

    func sendMetadata(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineWatermarkInterface {
    func addVideoWatermark(_ params: NSDictionary, _ callback: Callback)

    func clearVideoWatermarks(_ callback: Callback)
}

protocol RtcEngineEncryptionInterface {
    func setEncryptionSecret(_ params: NSDictionary, _ callback: Callback)

    func setEncryptionMode(_ params: NSDictionary, _ callback: Callback)

    func enableEncryption(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineAudioRecorderInterface {
    func startAudioRecording(_ params: NSDictionary, _ callback: Callback)

    func stopAudioRecording(_ callback: Callback)
}

protocol RtcEngineInjectStreamInterface {
    func addInjectStreamUrl(_ params: NSDictionary, _ callback: Callback)

    func removeInjectStreamUrl(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineCameraInterface {
    func switchCamera(_ callback: Callback)

    func isCameraZoomSupported(_ callback: Callback)

    func isCameraTorchSupported(_ callback: Callback)

    func isCameraFocusSupported(_ callback: Callback)

    func isCameraExposurePositionSupported(_ callback: Callback)

    func isCameraAutoFocusFaceModeSupported(_ callback: Callback)

    func setCameraZoomFactor(_ params: NSDictionary, _ callback: Callback)

    func getCameraMaxZoomFactor(_ callback: Callback)

    func setCameraFocusPositionInPreview(_ params: NSDictionary, _ callback: Callback)

    func setCameraExposurePosition(_ params: NSDictionary, _ callback: Callback)

    func enableFaceDetection(_ params: NSDictionary, _ callback: Callback)

    func setCameraTorchOn(_ params: NSDictionary, _ callback: Callback)

    func setCameraAutoFocusFaceModeEnabled(_ params: NSDictionary, _ callback: Callback)

    func setCameraCapturerConfiguration(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineStreamMessageInterface {
    func createDataStream(_ params: NSDictionary, _ callback: Callback)

    func sendStreamMessage(_ params: NSDictionary, _ callback: Callback)
}

//@objc
@objc public class RtcEngineManager: NSObject, RtcEngineInterface {
    private var emitter: (_ methodName: String, _ data: Dictionary<String, Any?>?) -> Void
    private(set) var engine: AgoraRtcEngineKit?
    private var delegate: RtcEngineEventHandler?
    private var mediaObserver: MediaObserver?
    private var agoraMediaDataPlugin: AgoraMediaDataPlugin?
    
    private var openEncodeData: Bool = false

    init(_ emitter: @escaping (_ methodName: String, _ data: Dictionary<String, Any?>?) -> Void) {
        self.emitter = emitter
    }

    func Release() {
        AgoraRtcEngineKit.destroy()
        engine = nil
        delegate = nil
        mediaObserver = nil
    }

    @objc func create(_ params: NSDictionary, _ callback: Callback) {
        delegate = RtcEngineEventHandler() { [weak self] methodName, data in
            self?.emitter(methodName, data)
        }
        let config = AgoraRtcEngineConfig()
        config.appId = params["appId"] as? String
        config.areaCode = (params["areaCode"] as! NSNumber).uintValue
        engine = AgoraRtcEngineKit.sharedEngine(with: config, delegate: delegate)
        if let engine = engine {
            setupRawPlugin(agoraKit: engine)
        }
        callback.code(engine?.setAppType(AgoraRtcAppType(rawValue: params["appType"] as! UInt)!))
    }

    @objc func destroy(_ callback: Callback) {
        callback.resolve(engine) { [weak self] it in
            self?.Release()
        }
    }

    @objc func setChannelProfile(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setChannelProfile(AgoraChannelProfile(rawValue: params["profile"] as! Int)!))
    }

    @objc func setClientRole(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setClientRole(AgoraClientRole(rawValue: params["role"] as! Int)!))
    }

    @objc func joinChannel(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.joinChannel(byToken: params["token"] as? String, channelId: params["channelName"] as? String ?? "", info: params["optionalInfo"] as? String, uid: params["optionalUid"] as? UInt ?? 0))
    }

    @objc func switchChannel(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.switchChannel(byToken: params["token"] as? String, channelId: params["channelName"] as! String))
    }

    @objc func leaveChannel(_ callback: Callback) {
        callback.code(engine?.leaveChannel())
    }

    @objc func renewToken(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.renewToken(params["token"] as! String))
    }

    @objc func enableWebSdkInteroperability(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.enableWebSdkInteroperability(params["enabled"] as! Bool))
    }

    @objc func getConnectionState(_ callback: Callback) {
        callback.resolve(engine) { it in
            it.getConnectionState().rawValue
        }
    }
    
    @objc func sendCustomReportMessage(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.sendCustomReportMessage(params["id"] as! String, category: params["category"] as! String, event: params["event"] as! String, label: params["label"] as! String, value: params["value"] as! Int))
    }

    @objc func getCallId(_ callback: Callback) {
        callback.resolve(engine) { it in
            it.getCallId()
        }
    }

    @objc func rate(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.rate(params["callId"] as! String, rating: params["rating"] as! Int, description: params["description"] as? String))
    }

    @objc func complain(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.complain(params["callId"] as! String, description: params["description"] as? String))
    }

    @objc func setLogFile(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setLogFile(params["filePath"] as! String))
    }

    @objc func setLogFilter(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setLogFilter(params["filter"] as! UInt))
    }

    @objc func setLogFileSize(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setLogFileSize((params["fileSizeInKBytes"] as! UInt)))
    }

    @objc func setParameters(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setParameters(params["parameters"] as! String))
    }

    @objc func registerLocalUserAccount(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.registerLocalUserAccount(params["userAccount"] as! String, appId: params["appId"] as! String))
    }

    @objc func joinChannelWithUserAccount(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.joinChannel(byUserAccount: params["userAccount"] as! String, token: params["token"] as? String, channelId: params["channelName"] as! String))
    }

    @objc func getUserInfoByUserAccount(_ params: NSDictionary, _ callback: Callback) {
        callback.resolve(engine) { it in
            it.getUserInfo(byUserAccount: params["userAccount"] as! String, withError: nil)?.toMap()
        }
    }

    @objc func getUserInfoByUid(_ params: NSDictionary, _ callback: Callback) {
        callback.resolve(engine) { it in
            it.getUserInfo(byUid: params["uid"] as! UInt, withError: nil)?.toMap()
        }
    }

    @objc func enableAudio(_ callback: Callback) {
        callback.code(engine?.enableAudio())
    }

    @objc func disableAudio(_ callback: Callback) {
        callback.code(engine?.disableAudio())
    }

    @objc func setAudioProfile(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setAudioProfile(AgoraAudioProfile(rawValue: params["profile"] as! Int)!, scenario: AgoraAudioScenario(rawValue: params["scenario"] as! Int)!))
    }

    @objc func adjustRecordingSignalVolume(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.adjustRecordingSignalVolume(params["volume"] as! Int))
    }

    @objc func adjustUserPlaybackSignalVolume(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.adjustUserPlaybackSignalVolume(params["uid"] as! UInt, volume: params["volume"] as! Int32))
    }

    @objc func adjustPlaybackSignalVolume(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.adjustPlaybackSignalVolume(params["volume"] as! Int))
    }

    @objc func enableLocalAudio(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.enableLocalAudio(params["enabled"] as! Bool))
    }

    @objc func muteLocalAudioStream(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.muteLocalAudioStream(params["muted"] as! Bool))
    }

    @objc func muteRemoteAudioStream(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.muteRemoteAudioStream(params["uid"] as! UInt, mute: params["muted"] as! Bool))
    }
    
    @objc func openEncodeData(_ params: NSDictionary, _ callback: Callback) {
        openEncodeData = params["openEncodeData"] as? Bool ?? false
    }
    
    @objc func muteAllRemoteAudioStreams(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.muteAllRemoteAudioStreams(params["muted"] as! Bool))
    }

    @objc func setDefaultMuteAllRemoteAudioStreams(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setDefaultMuteAllRemoteAudioStreams(params["muted"] as! Bool))
    }

    @objc func enableAudioVolumeIndication(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.enableAudioVolumeIndication(params["interval"] as! Int, smooth: params["smooth"] as! Int, report_vad: params["report_vad"] as! Bool))
    }

    @objc func enableVideo(_ callback: Callback) {
        callback.code(engine?.enableVideo())
    }

    @objc func disableVideo(_ callback: Callback) {
        callback.code(engine?.disableVideo())
    }

    @objc func setVideoEncoderConfiguration(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setVideoEncoderConfiguration(mapToVideoEncoderConfiguration(params["config"] as! Dictionary)))
    }

    @objc func startPreview(_ callback: Callback) {
        callback.code(engine?.startPreview())
    }

    @objc func stopPreview(_ callback: Callback) {
        callback.code(engine?.stopPreview())
    }

    @objc func enableLocalVideo(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.enableLocalVideo(params["enabled"] as! Bool))
    }

    @objc func muteLocalVideoStream(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.muteLocalVideoStream(params["muted"] as! Bool))
    }

    @objc func muteRemoteVideoStream(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.muteRemoteVideoStream(params["uid"] as! UInt, mute: params["muted"] as! Bool))
    }

    @objc func muteAllRemoteVideoStreams(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.muteAllRemoteVideoStreams(params["muted"] as! Bool))
    }

    @objc func setDefaultMuteAllRemoteVideoStreams(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setDefaultMuteAllRemoteVideoStreams(params["muted"] as! Bool))
    }

    @objc func setBeautyEffectOptions(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setBeautyEffectOptions(params["enabled"] as! Bool, options: mapToBeautyOptions(params["options"] as! Dictionary)))
    }

    @objc func startAudioMixing(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.startAudioMixing(params["filePath"] as! String, loopback: params["loopback"] as! Bool, replace: params["replace"] as! Bool, cycle: params["cycle"] as! Int))
    }

    @objc func stopAudioMixing(_ callback: Callback) {
        callback.code(engine?.stopAudioMixing())
    }

    @objc func pauseAudioMixing(_ callback: Callback) {
        callback.code(engine?.pauseAudioMixing())
    }

    @objc func resumeAudioMixing(_ callback: Callback) {
        callback.code(engine?.resumeAudioMixing())
    }

    @objc func adjustAudioMixingVolume(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.adjustAudioMixingVolume(params["volume"] as! Int))
    }

    @objc func adjustAudioMixingPlayoutVolume(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.adjustAudioMixingPlayoutVolume(params["volume"] as! Int))
    }

    @objc func adjustAudioMixingPublishVolume(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.adjustAudioMixingPublishVolume(params["volume"] as! Int))
    }

    @objc func getAudioMixingPlayoutVolume(_ callback: Callback) {
        callback.code(engine?.getAudioMixingPlayoutVolume()) { it in
            it
        }
    }

    @objc func getAudioMixingPublishVolume(_ callback: Callback) {
        callback.code(engine?.getAudioMixingPublishVolume()) { it in
            it
        }
    }

    @objc func getAudioMixingDuration(_ callback: Callback) {
        callback.code(engine?.getAudioMixingDuration()) { it in
            it
        }
    }

    @objc func getAudioMixingCurrentPosition(_ callback: Callback) {
        callback.code(engine?.getAudioMixingCurrentPosition()) { it in
            it
        }
    }

    @objc func setAudioMixingPosition(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setAudioMixingPosition(params["pos"] as! Int))
    }

    @objc func setAudioMixingPitch(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setAudioMixingPitch(params["pitch"] as! Int))
    }

    @objc func getEffectsVolume(_ callback: Callback) {
        callback.resolve(engine) { it in
            it.getEffectsVolume()
        }
    }

    @objc func setEffectsVolume(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setEffectsVolume(params["volume"] as! Double))
    }

    @objc func setVolumeOfEffect(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setVolumeOfEffect(params["soundId"] as! Int32, withVolume: params["volume"] as! Double))
    }

    @objc func playEffect(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.playEffect(params["soundId"] as! Int32, filePath: params["filePath"] as? String, loopCount: params["loopCount"] as! Int32, pitch: params["pitch"] as! Double, pan: params["pan"] as! Double, gain: params["gain"] as! Double, publish: params["publish"] as! Bool))
    }

    @objc func stopEffect(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.stopEffect(params["soundId"] as! Int32))
    }

    @objc func stopAllEffects(_ callback: Callback) {
        callback.code(engine?.stopAllEffects())
    }

    @objc func preloadEffect(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.preloadEffect(params["soundId"] as! Int32, filePath: params["filePath"] as? String))
    }

    @objc func unloadEffect(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.unloadEffect(params["soundId"] as! Int32))
    }

    @objc func pauseEffect(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.pauseEffect(params["soundId"] as! Int32))
    }

    @objc func pauseAllEffects(_ callback: Callback) {
        callback.code(engine?.pauseAllEffects())
    }

    @objc func resumeEffect(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.resumeEffect(params["soundId"] as! Int32))
    }

    @objc func resumeAllEffects(_ callback: Callback) {
        callback.code(engine?.resumeAllEffects())
    }
    
    @objc func setAudioSessionOperationRestriction(_ params: NSDictionary, _ callback: Callback) {
        callback.resolve(engine) { it in
            it.setAudioSessionOperationRestriction(AgoraAudioSessionOperationRestriction(rawValue: params["restriction"] as! UInt))
        }
    }

    @objc func setLocalVoiceChanger(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setLocalVoiceChanger(AgoraAudioVoiceChanger(rawValue: params["voiceChanger"] as! Int)!))
    }

    @objc func setLocalVoiceReverbPreset(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setLocalVoiceReverbPreset(AgoraAudioReverbPreset(rawValue: params["preset"] as! Int)!))
    }

    @objc func setLocalVoicePitch(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setLocalVoicePitch(params["pitch"] as! Double))
    }

    @objc func setLocalVoiceEqualization(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setLocalVoiceEqualizationOf(AgoraAudioEqualizationBandFrequency(rawValue: params["bandFrequency"] as! Int)!, withGain: params["bandGain"] as! Int))
    }

    @objc func setLocalVoiceReverb(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setLocalVoiceReverbOf(AgoraAudioReverbType(rawValue: params["reverbKey"] as! Int)!, withValue: params["value"] as! Int))
    }

    @objc func enableSoundPositionIndication(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.enableSoundPositionIndication(params["enabled"] as! Bool))
    }

    @objc func setRemoteVoicePosition(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setRemoteVoicePosition(params["uid"] as! UInt, pan: params["pan"] as! Double, gain: params["gain"] as! Double))
    }

    @objc func setLiveTranscoding(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setLiveTranscoding(mapToLiveTranscoding(params["transcoding"] as! Dictionary)))
    }

    @objc func addPublishStreamUrl(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.addPublishStreamUrl(params["url"] as! String, transcodingEnabled: params["transcodingEnabled"] as! Bool))
    }

    @objc func removePublishStreamUrl(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.removePublishStreamUrl(params["url"] as! String))
    }

    @objc func startChannelMediaRelay(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.startChannelMediaRelay(mapToChannelMediaRelayConfiguration(params["channelMediaRelayConfiguration"] as! Dictionary)))
    }

    @objc func updateChannelMediaRelay(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.updateChannelMediaRelay(mapToChannelMediaRelayConfiguration(params["channelMediaRelayConfiguration"] as! Dictionary)))
    }

    @objc func stopChannelMediaRelay(_ callback: Callback) {
        callback.code(engine?.stopChannelMediaRelay())
    }

    @objc func setDefaultAudioRoutetoSpeakerphone(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setDefaultAudioRouteToSpeakerphone(params["defaultToSpeaker"] as! Bool))
    }

    @objc func setEnableSpeakerphone(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setEnableSpeakerphone(params["enabled"] as! Bool))
    }

    @objc func isSpeakerphoneEnabled(_ callback: Callback) {
        callback.resolve(engine) { it in
            it.isSpeakerphoneEnabled()
        }
    }

    @objc func enableInEarMonitoring(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.enable(inEarMonitoring: params["enabled"] as! Bool))
    }

    @objc func setInEarMonitoringVolume(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setInEarMonitoringVolume(params["volume"] as! Int))
    }

    @objc func enableDualStreamMode(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.enableDualStreamMode(params["enabled"] as! Bool))
    }

    @objc func setRemoteVideoStreamType(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setRemoteVideoStream(params["uid"] as! UInt, type: AgoraVideoStreamType(rawValue: params["streamType"] as! Int)!))
    }

    @objc func setRemoteDefaultVideoStreamType(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setRemoteDefaultVideoStreamType(AgoraVideoStreamType(rawValue: params["streamType"] as! Int)!))
    }

    @objc func setLocalPublishFallbackOption(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setLocalPublishFallbackOption(AgoraStreamFallbackOptions(rawValue: params["option"] as! Int)!))
    }

    @objc func setRemoteSubscribeFallbackOption(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setRemoteSubscribeFallbackOption(AgoraStreamFallbackOptions(rawValue: params["option"] as! Int)!))
    }

    @objc func setRemoteUserPriority(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setRemoteUserPriority(params["uid"] as! UInt, type: AgoraUserPriority(rawValue: params["userPriority"] as! Int)!))
    }

    @objc func startEchoTest(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.startEchoTest(withInterval: params["intervalInSeconds"] as! Int))
    }

    @objc func stopEchoTest(_ callback: Callback) {
        callback.code(engine?.stopEchoTest())
    }

    @objc func enableLastmileTest(_ callback: Callback) {
        callback.code(engine?.enableLastmileTest())
    }

    @objc func disableLastmileTest(_ callback: Callback) {
        callback.code(engine?.disableLastmileTest())
    }

    @objc func startLastmileProbeTest(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.startLastmileProbeTest(mapToLastmileProbeConfig(params["config"] as! Dictionary)))
    }

    @objc func stopLastmileProbeTest(_ callback: Callback) {
        callback.code(engine?.stopLastmileProbeTest())
    }

    @objc func registerMediaMetadataObserver(_ callback: Callback) {
        var code = -AgoraErrorCode.notInitialized.rawValue
        if let it = engine {
            let mediaObserver = MediaObserver { [weak self] data in
                self?.emitter(RtcEngineEvents.MetadataReceived, data)
            }
            if it.setMediaMetadataDelegate(mediaObserver, with: .video) {
                self.mediaObserver = mediaObserver
                code = AgoraErrorCode.noError.rawValue
            }
        }
        callback.code(Int32(code))
    }

    @objc func unregisterMediaMetadataObserver(_ callback: Callback) {
        var code = -AgoraErrorCode.notInitialized.rawValue
        if let it = engine {
            if it.setMediaMetadataDelegate(nil, with: .video) {
                self.mediaObserver = nil
                code = AgoraErrorCode.noError.rawValue
            }
        }
        callback.code(Int32(code))
    }

    @objc func setMaxMetadataSize(_ params: NSDictionary, _ callback: Callback) {
        callback.resolve(mediaObserver) { it in
            it.setMaxMetadataSize(params["size"] as! Int)
        }
    }

    @objc func sendMetadata(_ params: NSDictionary, _ callback: Callback) {
        callback.resolve(mediaObserver) { it in
            it.addMetadata(params["metadata"] as! String)
        }
    }

    @objc func addVideoWatermark(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.addVideoWatermark(URL(string: params["watermarkUrl"] as! String)!, options: mapToWatermarkOptions(params["options"] as! Dictionary)))
    }

    @objc func clearVideoWatermarks(_ callback: Callback) {
        callback.code(engine?.clearVideoWatermarks())
    }

    @objc func setEncryptionSecret(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setEncryptionSecret(params["secret"] as? String))
    }

    @objc func setEncryptionMode(_ params: NSDictionary, _ callback: Callback) {
        var encryptionMode = ""
        switch params["encryptionMode"] as! Int {
        case AgoraEncryptionMode.AES128XTS.rawValue:
            encryptionMode = "aes-128-xts"
        case AgoraEncryptionMode.AES128ECB.rawValue:
            encryptionMode = "aes-128-ecb"
        case AgoraEncryptionMode.AES256XTS.rawValue:
            encryptionMode = "aes-256-xts"
        default: encryptionMode = ""
        }
        callback.code(engine?.setEncryptionMode(encryptionMode))
    }

    @objc func enableEncryption(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.enableEncryption(params["enabled"] as! Bool, encryptionConfig: mapToEncryptionConfig(params["config"] as! Dictionary)))
    }

    @objc func startAudioRecording(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.startAudioRecording(params["filePath"] as! String, sampleRate: params["sampleRate"] as! Int, quality: AgoraAudioRecordingQuality(rawValue: params["quality"] as! Int)!))
    }

    @objc func stopAudioRecording(_ callback: Callback) {
//        AgoraAudioRawData.encoder?.reset();
        callback.code(engine?.stopAudioRecording())
    }

    @objc func addInjectStreamUrl(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.addInjectStreamUrl(params["url"] as! String, config: mapToLiveInjectStreamConfig(params["config"] as! Dictionary)))
    }

    @objc func removeInjectStreamUrl(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.removeInjectStreamUrl(params["url"] as! String))
    }

    @objc func switchCamera(_ callback: Callback) {
        callback.code(engine?.switchCamera())
    }

    @objc func isCameraZoomSupported(_ callback: Callback) {
        callback.resolve(engine) { it in
            it.isCameraZoomSupported()
        }
    }

    @objc func isCameraTorchSupported(_ callback: Callback) {
        callback.resolve(engine) { it in
            it.isCameraTorchSupported()
        }
    }

    @objc func isCameraFocusSupported(_ callback: Callback) {
        callback.code(-Int32(AgoraErrorCode.notSupported.rawValue))
    }

    @objc func isCameraExposurePositionSupported(_ callback: Callback) {
        callback.resolve(engine) { it in
            it.isCameraExposurePositionSupported()
        }
    }

    @objc func isCameraAutoFocusFaceModeSupported(_ callback: Callback) {
        callback.resolve(engine) { it in
            it.isCameraAutoFocusFaceModeSupported()
        }
    }

    @objc func setCameraZoomFactor(_ params: NSDictionary, _ callback: Callback) {
        callback.resolve(engine) { it in
            it.setCameraZoomFactor(CGFloat(params["factor"] as! Float))
            return nil
        }
    }

    @objc func getCameraMaxZoomFactor(_ callback: Callback) {
        callback.code(-Int32(AgoraErrorCode.notSupported.rawValue))
    }

    @objc func setCameraFocusPositionInPreview(_ params: NSDictionary, _ callback: Callback) {
        callback.resolve(engine) { it in
            engine?.setCameraFocusPositionInPreview(CGPoint(x: params["positionX"] as! Double, y: params["positionY"] as! Double))
            return nil
        }
    }

    @objc func setCameraExposurePosition(_ params: NSDictionary, _ callback: Callback) {
        callback.resolve(engine) { it in
            it.setCameraExposurePosition(CGPoint(x: params["positionXinView"] as! Double, y: params["positionYinView"] as! Double))
            return nil
        }
    }

    @objc func enableFaceDetection(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.enableFaceDetection(params["enable"] as! Bool))
    }

    @objc func setCameraTorchOn(_ params: NSDictionary, _ callback: Callback) {
        callback.resolve(engine) { it in
            it.setCameraTorchOn(params["isOn"] as! Bool)
            return nil
        }
    }

    @objc func setCameraAutoFocusFaceModeEnabled(_ params: NSDictionary, _ callback: Callback) {
        callback.resolve(engine) { it in
            it.setCameraAutoFocusFaceModeEnabled(params["enabled"] as! Bool)
        }
    }

    @objc func setCameraCapturerConfiguration(_ params: NSDictionary, _ callback: Callback) {
        callback.code(engine?.setCameraCapturerConfiguration(mapToCameraCapturerConfiguration(params["config"] as! Dictionary)))
    }

    @objc func createDataStream(_ params: NSDictionary, _ callback: Callback) {
        var code: Int32 = -Int32(AgoraErrorCode.notInitialized.rawValue)
        var streamId = 0
        if let it = engine {
            code = it.createDataStream(&streamId, reliable: params["reliable"] as! Bool, ordered: params["ordered"] as! Bool)
        }
        callback.code(code) { it in
            streamId
        }
    }

    @objc func sendStreamMessage(_ params: NSDictionary, _ callback: Callback) {
        var code: Int32 = -Int32(AgoraErrorCode.notInitialized.rawValue)
        if let it = engine {
            if let data = (params["message"] as! String).data(using: .utf8) {
                code = it.sendStreamMessage(params["streamId"] as! Int, data: data)
            } else {
                code = -Int32(AgoraErrorCode.invalidArgument.rawValue)
            }
        }
        callback.code(code)
    }
}

extension RtcEngineManager {
    func setupRawPlugin(agoraKit: AgoraRtcEngineKit) {
        // setup raw media data observers
        agoraMediaDataPlugin = AgoraMediaDataPlugin(agoraKit: agoraKit)
        
        // Register audio observer
        let audioType:ObserverAudioType = ObserverAudioType(rawValue: ObserverAudioType.recordAudio.rawValue | ObserverAudioType.playbackAudioFrameBeforeMixing.rawValue | ObserverAudioType.mixedAudio.rawValue | ObserverAudioType.playbackAudio.rawValue);
        agoraMediaDataPlugin?.registerAudioRawDataObserver(audioType)
//        agoraMediaDataPlugin?.audioDelegate = self
        
//        let samplesPerCall = 4410
//        agoraKit.setRecordingAudioFrameParametersWithSampleRate(samplesPerCall * 10, channel: 1, mode: .readWrite, samplesPerCall: samplesPerCall)
//        agoraKit.setMixedAudioFrameParametersWithSampleRate(samplesPerCall * 10, samplesPerCall: samplesPerCall)
//        agoraKit.setPlaybackAudioFrameParametersWithSampleRate(samplesPerCall * 10, channel: 1, mode: .readWrite, samplesPerCall: samplesPerCall)
        
//        // Register video observer
//        let videoType:ObserverVideoType = ObserverVideoType(rawValue: ObserverVideoType.captureVideo.rawValue | ObserverVideoType.renderVideo.rawValue | ObserverVideoType.preEncodeVideo.rawValue)
//        agoraMediaDataPlugin?.registerVideoRawDataObserver(videoType)
//        agoraMediaDataPlugin?.videoDelegate = self;
//
//        // Register packet observer
//        let packetType:ObserverPacketType = ObserverPacketType(rawValue: ObserverPacketType.sendAudio.rawValue | ObserverPacketType.sendVideo.rawValue | ObserverPacketType.receiveAudio.rawValue | ObserverPacketType.receiveVideo.rawValue)
//        agoraMediaDataPlugin?.registerPacketRawDataObserver(packetType)
//        agoraMediaDataPlugin?.packetDelegate = self;
        
//        AgoraAudioRawData.removeAudioFile()
    }
    
    func unsetRawPlugin() {
        agoraMediaDataPlugin?.deregisterAudioRawDataObserver(ObserverAudioType(rawValue: 0))
        agoraMediaDataPlugin?.deregisterVideoRawDataObserver(ObserverVideoType(rawValue: 0))
        agoraMediaDataPlugin?.deregisterPacketRawDataObserver(ObserverPacketType(rawValue: 0))
    }
}

// audio data plugin, here you can process raw audio data
// note this all happens in CPU so it comes with a performance cost
//extension RtcEngineManager : AgoraAudioDataPluginDelegate
//{
//    /// Retrieves the recorded audio frame.
//    public func mediaDataPlugin(_ mediaDataPlugin: AgoraMediaDataPlugin, didRecord audioRawData: AgoraAudioRawData) -> AgoraAudioRawData {
//        guard openEncodeData == true else {
//            return audioRawData
//        }
//        emitter(RtcChannelEvents.RecordFrameEvent, ["data": audioRawData.toFlutterRawData(isPlayback: false)])
//        return audioRawData
//    }
//
//    /// Retrieves the audio playback frame for getting the audio.
//    public func mediaDataPlugin(_ mediaDataPlugin: AgoraMediaDataPlugin, willPlaybackAudioRawData audioRawData: AgoraAudioRawData) -> AgoraAudioRawData {
//        guard openEncodeData == true else {
//            return audioRawData
//        }
//        emitter(RtcChannelEvents.PlaybackFrameEvent, ["data": audioRawData.toFlutterRawData(isPlayback: true)])
//        return audioRawData
//    }
//
//    /// Retrieves the audio frame of a specified user before mixing.
//    /// The SDK triggers this callback if isMultipleChannelFrameWanted returns false.
//    public func mediaDataPlugin(_ mediaDataPlugin: AgoraMediaDataPlugin, willPlaybackBeforeMixing audioRawData: AgoraAudioRawData, ofUid uid: uint) -> AgoraAudioRawData {
//        return audioRawData
//    }
//
//    /// Retrieves the mixed recorded and playback audio frame.
//    public func mediaDataPlugin(_ mediaDataPlugin: AgoraMediaDataPlugin, didMixedAudioRawData audioRawData: AgoraAudioRawData) -> AgoraAudioRawData {
//        return audioRawData
//    }
//}

extension AgoraAudioRawData {
    static var encoderKey = 0x10000000
    static var encoder: YJAudioEncoder? {
        set {
            objc_setAssociatedObject(self, &Self.encoderKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        get {
            objc_getAssociatedObject(self, &Self.encoderKey) as? YJAudioEncoder
        }
    }


//    static var player = AudioSteamPlayer()

    func toFlutterRawData(isPlayback: Bool) -> [Any] {
//        buffer.convertEndian(size: Int(bufferSize))
        var data = Data(bytes: buffer, count: Int(bufferSize))
        if (isPlayback) {
            // 解码
        } else {
            // 编码
            if Self.encoder == nil {
                Self.encoder = YJAudioEncoder(sampleRate: Int(samplesPerSec),sample: UInt(samples), channelNum: Int(channels), bytesPerFrame: Int(bytesPerSample))
            }
            data = Self.encoder!.convertAudioFrameData(data)
            // print("encoded size = \(encoded.count)")
            // data = encode(data: data)
            // Self.saveAudio(playing: data)
            // Self.player.play(buffer: data.makePCMBuffer(format: format)!)
        }
        let bytes = FlutterStandardTypedData(bytes: data)
        return [bytes, samples, bytesPerSample, channels, samplesPerSec]
    }

    func encode(data: Data) -> Data {
        return AACCodec.encode(data: data, from: format)
    }


    var format: AVAudioFormat {
        let commonFormat: AVAudioCommonFormat = {
            switch bytesPerSample {
            case 2: return .pcmFormatInt16
            case 4: return .pcmFormatInt32
            case 8: return .pcmFormatFloat64
            default: return .otherFormat
            }
        }()
        return AVAudioFormat(commonFormat: commonFormat, sampleRate: Double(samplesPerSec), channels: AVAudioChannelCount(channels), interleaved: true)!
    }

    static func saveAudio(playing: Data) {
        DispatchQueue.global().async {
            if let docURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
                saveAudio(data: playing, to: docURL.appendingPathComponent("playing.pcm"))
                // print("save file ....")
            }
        }
    }

    static func saveAccAudio(playing: Data) {
        DispatchQueue.global().async {
            if let docURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
                saveAudio(data: playing, to: docURL.appendingPathComponent("playing.aac"))
                // print("save file ....")
            }
        }
    }

    static func removeAudioFile() {
        if let docURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            try? FileManager.default.removeItem(at: docURL.appendingPathComponent("playing.pcm"))
        }
    }

    static func saveAudio(data: Data, to file: URL) {
        guard FileManager.default.fileExists(atPath: file.path) else {
            let result = FileManager.default.createFile(atPath: file.path, contents: data, attributes: nil)
            print("创建文件: \(result)", file)
            return
        }
        guard let handle = try? FileHandle(forUpdating: file) else {
            return
        }
        handle.seekToEndOfFile()
        handle.write(data)
        handle.closeFile()
    }
}

extension UnsafeMutablePointer where Pointee == Int8  {
    func convertEndian(size: Int) {
        for i in stride(from: 0, to: size - 1, by: 2) {
            let temp = self[i]
            self[i] =  self[i + 1]
            self[i + 1] = temp
        }
    }
}
