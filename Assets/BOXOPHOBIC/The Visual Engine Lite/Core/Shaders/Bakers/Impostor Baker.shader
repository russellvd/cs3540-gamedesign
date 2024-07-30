// Made with Amplify Shader Editor v1.9.4.4
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Hidden/BOXOPHOBIC/The Visual Engine Lite/Helpers/Impostors Baker"
{
	Properties
	{
		[NoScaleOffset][StyledTextureSingleLine]_NoiseTex3D("Noise Mask 3D", 3D) = "white" {}
		[HideInInspector]_IsVersion("_IsVersion", Float) = 2000
		[StyledCategory(Emissive Settings, true, 0, 10)]_EmissiveCategory("[ Emissive Category ]", Float) = 1
		_EmissiveIntensityValue("Emissive Intensity", Range( 0 , 1)) = 0
		[Enum(None,0,Any,1,Baked,2,Realtime,3)]_EmissiveFlagMode("Emissive GI Mode", Float) = 0
		[HDR]_EmissiveColor("Emissive Color", Color) = (1,1,1,1)
		[Enum(Nits,0,EV100,1)]_EmissivePowerMode("Emissive Power", Float) = 0
		_EmissivePowerValue("Emissive Power", Float) = 1
		[Space(10)][StyledTextureSingleLine]_EmissiveMaskTex("Emissive Mask", 2D) = "white" {}
		[Enum(Main UV,0,Extra UV,1)][Space(10)]_EmissiveSampleMode("Mask Sampling", Float) = 0
		[Enum(Tilling And Offset,0,Scale And Offset,1)]_EmissiveCoordMode("Mask UV Mode", Float) = 0
		[StyledVector(9)]_EmissiveCoordValue("Mask UV Value", Vector) = (1,1,0,0)
		_EmissiveMaskValue("Emissive TexR Mask", Range( 0 , 1)) = 1
		[StyledRemapSlider]_EmissiveMaskRemap("Emissive TexR Mask", Vector) = (0,1,0,0)
		[Enum(Vertex R,0,Vertex G,1,Vertex B,2,Vertex A,3)]_EmissiveMeshMode("Emissive Mesh Mask", Float) = 0
		_EmissiveMeshValue("Emissive Mesh Mask", Range( 0 , 1)) = 0
		[StyledRemapSlider]_EmissiveMeshRemap("Emissive Mesh Mask", Vector) = (0,1,0,0)
		[Space(10)][StyledToggle]_EmissiveElementMode("Use Glow Globals / Elements", Float) = 0
		[StyledSpace(10)]_EmissiveEnd("[ Emissive End ]", Float) = 1
		[HideInInspector]_emissive_power_value("_emissive_power_value", Float) = 1
		[HideInInspector]_emissive_vert_mode("_emissive_vert_mode", Vector) = (0,0,0,0)
		[HideInInspector]_emissive_coord_value("_emissive_coord_value", Vector) = (1,1,0,0)
		[StyledCategory(Object Settings, true, 0, 10)]_ObjectCategory("[ Object Category ]", Float) = 1
		[Enum(Legacy,0,Standard,1)]_ObjectModelMode("Object Model Mode", Float) = 1
		[Enum(Off,0,Baked,1,Procedural,2)]_ObjectPivotMode("Object Pivots Mode", Float) = 0
		[Enum(Vertex R,0,Vertex G,1,Vertex B,2,Vertex A,3)]_ObjectPhaseMode("Object Phase Mask", Float) = 0
		_ObjectHeightValue("Object Height Value", Range( 0 , 40)) = 1
		_ObjectRadiusValue("Object Radius Value", Range( 0 , 40)) = 1
		[HideInInspector]_object_phase_mode("_object_phase_mode", Vector) = (0,0,0,0)
		[StyledSpace(10)]_ObjectEnd("[ Object End ]", Float) = 1
		[StyledCategory(Main Settings, true, 0, 10)]_MainCategory("[Main Category ]", Float) = 1
		[StyledMessage(Info, Use the Multi Mask remap sliders to control the mask for Global Tinting__ Main Colors__ Gradient Tinting and Subsurface Scattering when available. The mask is stored in Main Mask Blue channel. , 0, 10)]_MessageMainMask("# Message Main Mask", Float) = 0
		[StyledTextureSingleLine]_MainAlbedoTex("Main Albedo", 2D) = "white" {}
		[StyledTextureSingleLine]_MainNormalTex("Main Normal", 2D) = "bump" {}
		[StyledTextureSingleLine]_MainShaderTex("Main Shader", 2D) = "white" {}
		[Enum(Main UV,0,Extra UV,1,Planar,2,Triplanar,3,Stochastic,4,Stochastic Triplanar,5)][Space(10)]_MainSampleMode("Main Sampling", Float) = 0
		[Enum(Tilling And Offset,0,Scale And Offset,1)]_MainCoordMode("Main UV Mode", Float) = 0
		[StyledVector(9)]_MainCoordValue("Main UV Value", Vector) = (1,1,0,0)
		[HideInInspector]_main_coord_value("_main_coord_value", Vector) = (1,1,0,0)
		[Enum(Constant,0,Dual Colors,1)]_MainColorMode("Main Color", Float) = 0
		[HDR]_MainColor("Main Color", Color) = (1,1,1,1)
		[HDR]_MainColorTwo("Main ColorB", Color) = (1,1,1,1)
		_MainAlphaClipValue("Main Alpha", Range( 0 , 1)) = 0.5
		_MainAlbedoValue("Main Albedo", Range( 0 , 1)) = 1
		_MainNormalValue("Main Normal", Range( -8 , 8)) = 1
		_MainMetallicValue("Main Metallic", Range( 0 , 1)) = 0
		_MainOcclusionValue("Main Occlusion", Range( 0 , 1)) = 0
		[StyledRemapSlider]_MainMultiRemap("Main Multi Mask", Vector) = (0,0,0,0)
		_MainSmoothnessValue("Main Smoothness", Range( 0 , 1)) = 0
		[StyledSpace(10)]_MainEnd("[Main End ]", Float) = 1
		[StyledCategory(Layer Settings, true, 0, 10)]_LayerCategory("[ Layer Category ]", Float) = 1
		_SecondIntensityValue("Layer Intensity", Range( 0 , 1)) = 0
		[Enum(Off,0,Bake Settings To Impostors,1)]_SecondBakeMode("Layer Baking", Float) = 1
		[Space(10)][StyledTextureSingleLine]_SecondAlbedoTex("Layer Albedo", 2D) = "white" {}
		[StyledTextureSingleLine]_SecondNormalTex("Layer Normal", 2D) = "bump" {}
		[StyledTextureSingleLine]_SecondShaderTex("Layer Shader", 2D) = "white" {}
		[Enum(Main UV,0,Extra UV,1,Planar,2,Triplanar,3,Stochastic,4,Stochastic Triplanar,5)][Space(10)]_SecondSampleMode("Layer Sampling", Float) = 0
		[Enum(Tilling And Offset,0,Scale And Offset,1)]_SecondCoordMode("Layer UV Mode", Float) = 0
		[StyledVector(9)]_SecondCoordValue("Layer UV Value", Vector) = (1,1,0,0)
		[Enum(Constant,0,Dual Colors,1)]_SecondColorMode("Layer Color", Float) = 0
		[HDR]_SecondColor("Layer Color", Color) = (1,1,1,1)
		[HDR]_SecondColorTwo("Layer ColorB", Color) = (1,1,1,1)
		_SecondAlphaClipValue("Layer Alpha", Range( 0 , 1)) = 0.5
		_SecondAlbedoValue("Layer Albedo", Range( 0 , 1)) = 1
		_SecondNormalValue("Layer Normal", Range( -8 , 8)) = 1
		_SecondMetallicValue("Layer Metallic", Range( 0 , 1)) = 0
		_SecondOcclusionValue("Layer Occlusion", Range( 0 , 1)) = 0
		[StyledRemapSlider]_SecondMultiRemap("Layer Multi Mask", Vector) = (0,0,0,0)
		_SecondSmoothnessValue("Layer Smoothness", Range( 0 , 1)) = 0
		[Space(10)]_SecondBlendIntensityValue("Layer Blend Intensity", Range( 0 , 1)) = 1
		_SecondBlendAlbedoValue("Layer Blend Albedos", Range( 0 , 1)) = 0
		_SecondBlendNormalValue("Layer Blend Normals", Range( 0 , 1)) = 0
		_SecondBlendShaderValue("Layer Blend Shaders", Range( 0 , 1)) = 0
		[Space(10)][StyledTextureSingleLine]_SecondMaskTex("Layer Mask", 2D) = "white" {}
		[Enum(Main UV,0,Extra UV,1,Planar,2,Triplanar,3)][Space(10)]_SecondMaskSampleMode("Mask Sampling", Float) = 0
		[Enum(Tilling And Offset,0,Scale And Offset,1)]_SecondMaskCoordMode("Mask UV Mode", Float) = 0
		[StyledVector(9)]_SecondMaskCoordValue("Mask UV Value", Vector) = (1,1,0,0)
		_SecondMaskValue("Layer TexB Mask", Range( 0 , 1)) = 1
		[StyledRemapSlider]_SecondMaskRemap("Layer TexB Mask", Vector) = (0,1,0,0)
		_SecondProjValue("Layer ProjY Mask", Range( 0 , 1)) = 0
		[StyledRemapSlider]_SecondProjRemap("Layer ProjY Mask", Vector) = (0,1,0,0)
		[Enum(Vertex R,0,Vertex G,1,Vertex B,2,Vertex A,3)]_SecondMeshMode("Layer Mesh Mask", Float) = 2
		_SecondMeshValue("Layer Mesh Mask", Range( 0 , 1)) = 0
		[StyledRemapSlider]_SecondMeshRemap("Layer Mesh Mask", Vector) = (0,1,0,0)
		[StyledRemapSlider]_SecondBlendRemap("Layer Blend Mask", Vector) = (0,1,0,0)
		[Space(10)][StyledToggle]_SecondElementMode("Use Coat Globals / Elements", Float) = 0
		[StyledSpace(10)]_LayerEnd("[ Layer End ]", Float) = 1
		[HideInInspector]_second_coord_value("_second_coord_value", Vector) = (1,1,0,0)
		[HideInInspector]_second_vert_mode("_second_vert_mode", Vector) = (0,0,0,0)
		[HideInInspector]_second_mask_coord_value("_second_mask_coord_value", Vector) = (1,1,0,0)
		[StyledCategory(Detail Settings, true, 0, 10)]_DetailCategory("[ Detail Category ]", Float) = 1
		_ThirdIntensityValue("Detail Intensity", Range( 0 , 1)) = 0
		[Enum(Off,0,Bake Settings To Impostors,1)]_ThirdBakeMode("Detail Baking", Float) = 1
		[Space(10)][StyledTextureSingleLine]_ThirdAlbedoTex("Detail Albedo", 2D) = "white" {}
		[StyledTextureSingleLine]_ThirdNormalTex("Detail Normal", 2D) = "bump" {}
		[StyledTextureSingleLine]_ThirdShaderTex("Detail Shader", 2D) = "white" {}
		[Enum(Main UV,0,Extra UV,1,Planar,2,Triplanar,3,Stochastic,4,Stochastic Triplanar,5)][Space(10)]_ThirdSampleMode("Detail Sampling", Float) = 0
		[Enum(Tilling And Offset,0,Scale And Offset,1)]_ThirdCoordMode("Detail UV Mode", Float) = 0
		[StyledVector(9)]_ThirdCoordValue("Detail UV Value", Vector) = (1,1,0,0)
		[Enum(Constant,0,Dual Colors,1)]_ThirdColorMode("Detail Color", Float) = 0
		[HDR]_ThirdColor("Detail Color", Color) = (1,1,1,1)
		[HDR]_ThirdColorTwo("Detail ColorB", Color) = (1,1,1,1)
		_ThirdAlphaClipValue("Detail Alpha", Range( 0 , 1)) = 0.5
		_ThirdAlbedoValue("Detail Albedo", Range( 0 , 1)) = 1
		_ThirdNormalValue("Detail Normal", Range( -8 , 8)) = 1
		_ThirdMetallicValue("Detail Metallic", Range( 0 , 1)) = 0
		_ThirdOcclusionValue("Detail Occlusion", Range( 0 , 1)) = 0
		[StyledRemapSlider]_ThirdMultiRemap("Detail Multi Mask", Vector) = (0,0,0,0)
		_ThirdSmoothnessValue("Detail Smoothness", Range( 0 , 1)) = 0
		[Space(10)]_ThitdBlendIntensityValue("Detail Blend Intensity", Range( 0 , 1)) = 1
		_ThirdBlendAlbedoValue("Detail Blend Albedos", Range( 0 , 1)) = 0
		_ThirdBlendNormalValue("Detail Blend Normals", Range( 0 , 1)) = 0
		_ThitdBlendShaderValue("Detail Blend Shaders", Range( 0 , 1)) = 0
		[Space(10)][StyledTextureSingleLine]_ThirdMaskTex("Detail Mask", 2D) = "white" {}
		[Enum(Main UV,0,Extra UV,1,Planar,2,Triplanar,3)][Space(10)]_ThirdMaskSampleMode("Mask Sampling", Float) = 0
		[Enum(Tilling And Offset,0,Scale And Offset,1)]_ThirdMaskCoordMode("Mask UV Mode", Float) = 0
		[StyledVector(9)]_ThirdMaskCoordValue("Mask UV Value", Vector) = (1,1,0,0)
		_ThirdMaskValue("Detail TexG Mask", Range( 0 , 1)) = 1
		[StyledRemapSlider]_ThirdMaskRemap("Detail TexG Mask", Vector) = (0,1,0,0)
		_ThirdProjValue("Detail ProjY Mask", Range( 0 , 1)) = 0
		[StyledRemapSlider]_ThirdProjRemap("Detail ProjY Mask", Vector) = (0,1,0,0)
		[Enum(Vertex R,0,Vertex G,1,Vertex B,2,Vertex A,3)]_ThirdMeshMode("Detail Mesh Mask", Float) = 1
		_ThirdMeshValue("Detail Mesh Mask", Range( 0 , 1)) = 0
		[StyledRemapSlider]_ThirdMeshRemap("Detail Mesh Mask", Vector) = (0,1,0,0)
		[StyledRemapSlider]_ThirdBlendRemap("Detail Blend Mask", Vector) = (0,1,0,0)
		[Space(10)][StyledToggle]_ThirdElementMode("Use Coat Globals / Elements", Float) = 0
		[StyledSpace(10)]_DetailEnd("[ Detail End ]", Float) = 1
		[HideInInspector]_third_coord_value("_third_coord_value", Vector) = (1,1,0,0)
		[HideInInspector]_third_vert_mode("_third_vert_mode", Vector) = (0,0,0,0)
		[HideInInspector]_third_mask_coord_value("_third_mask_coord_value", Vector) = (1,1,0,0)
		[StyledCategory(Occlusion Settings, true, 0, 10)]_OcclusionCategory("[ Occlusion Category ]", Float) = 1
		_OcclusionIntensityValue("Occlusion Intensity", Range( 0 , 1)) = 0
		[Enum(Off,0,Bake Settings To Impostors,1)]_OcclusionBakeMode("Occlusion Baking", Float) = 1
		[HDR]_OcclusionColorOne("Occlusion ColorA", Color) = (1,1,1,1)
		[HDR]_OcclusionColorTwo("Occlusion ColorB", Color) = (0.25,0.25,0.25,1)
		[Enum(Vertex R,0,Vertex G,1,Vertex B,2,Vertex A,3)][Space(10)]_OcclusionMeshMode("Occlusion Mesh Mask", Float) = 1
		[StyledRemapSlider]_OcclusionMeshRemap("Occlusion Mesh Mask", Vector) = (0,1,0,0)
		[StyledSpace(10)]_OcclusionEnd("[ Occlusion End ]", Float) = 1
		[HideInInspector]_occlusion_vert_mode("_occlusion_vert_mode", Vector) = (0,0,0,0)
		[StyledCategory(Gradient Settings, true, 0, 10)]_GradientCategory("[ Gradient Category ]", Float) = 1
		_GradientIntensityValue("Gradient Intensity", Range( 0 , 1)) = 0
		[Enum(Off,0,Bake Settings To Impostors,1)]_GradientBakeMode("Gradient Baking", Float) = 1
		[HDR]_GradientColorOne("Gradient ColorA", Color) = (1,0.6135602,0,1)
		[HDR]_GradientColorTwo("Gradient ColorB", Color) = (0.754717,0.0389044,0.03203986,1)
		[Space(10)]_GradientMultiValue("Gradient Multi Mask", Range( 0 , 1)) = 1
		[Enum(Vertex R,0,Vertex G,1,Vertex B,2,Vertex A,3)]_GradientMeshMode("Gradient Mesh Mask", Float) = 3
		[StyledRemapSlider]_GradientMeshRemap("Gradient Mesh Mask", Vector) = (0,1,0,0)
		[StyledSpace(10)]_GradientEnd("[ Gradient End ]", Float) = 1
		[HideInInspector]_gradient_vert_mode("_gradient_vert_mode", Vector) = (0,0,0,0)
		[StyledCategory(Overlay Settings, true, 0, 10)]_OverlayCategory("[ Overlay Category ]", Float) = 1
		_OverlayIntensityValue("Overlay Intensity", Range( 0 , 1)) = 0
		[Enum(Keep Dynamic On Impostors,0,Bake Settings To Impostors,1)]_OverlayBakeMode("Overlay Baking", Float) = 0
		[Enum(Off,0,On,1)]_OverlayTextureMode("Overlay Maps", Float) = 0
		[Space(10)][StyledTextureSingleLine]_OverlayAlbedoTex("Overlay Albedo", 2D) = "white" {}
		[StyledTextureSingleLine]_OverlayNormalTex("Overlay Normal", 2D) = "bump" {}
		[Enum(Planar,0,Triplanar,1,Stochastic,2,Stochastic Triplanar,3)][Space(10)]_OverlaySampleMode("Overlay Sampling", Float) = 0
		[Enum(Tilling And Offset,0,Scale And Offset,1)]_OverlayCoordMode("Overlay UV Mode", Float) = 0
		[StyledVector(9)]_OverlayCoordValue("Overlay UV Value", Vector) = (1,1,0,0)
		[HDR]_OverlayColor("Overlay Color", Color) = (0.2815503,0.4009458,0.5377358,1)
		_OverlayNormalValue("Overlay Normal", Range( -8 , 8)) = 1
		_OverlaySubsurfaceValue("Overlay Subsurface", Range( 0 , 1)) = 0.5
		_OverlaySmoothnessValue("Overlay Smoothness", Range( 0 , 1)) = 0.5
		[Space(10)][StyledTextureSingleLine]_OverlayGlitterTex("Overlay Glitter", 2D) = "black" {}
		[Space(10)]_OverlayGlitterIntensityValue("Overlay Glitter Intensity", Range( 0 , 1)) = 1
		[HDR]_OverlayGlitterColor("Overlay Glitter Color", Color) = (0.7215686,1.913725,2.996078,1)
		_OverlayGlitterTillingValue("Overlay Glitter Tilling", Range( 0 , 8)) = 4
		_OverlayGlitterDistValue("Overlay Glitter Fade", Range( 0 , 200)) = 100
		[StyledSpace(10)]_OverlaySpace("[ Overlay Space ]", Float) = 1
		_OverlayLumaValue("Overlay Luma Mask", Range( 0 , 1)) = 1
		[StyledRemapSlider]_OverlayLumaRemap("Overlay Luma Mask", Vector) = (0,1,0,0)
		_OverlayProjValue("Overlay ProjY Mask", Range( 0 , 1)) = 0.5
		[StyledRemapSlider]_OverlayProjRemap("Overlay ProjY Mask", Vector) = (0,1,0,0)
		[Enum(Vertex R,0,Vertex G,1,Vertex B,2,Vertex A,3)]_OverlayMeshMode("Overlay Mesh Mask", Float) = 1
		_OverlayMeshValue("Overlay Mesh Mask", Range( 0 , 1)) = 0
		[StyledRemapSlider]_OverlayMeshRemap("Overlay Mesh Mask", Vector) = (0,1,0,0)
		[Space(10)][StyledToggle]_OverlayElementMode("Use Atmo Globals / Elements", Float) = 1
		[HideInInspector]_overlay_vert_mode("_overlay_vert_mode", Vector) = (0,0,0,0)
		[HideInInspector]_overlay_coord_value("_overlay_coord_value", Vector) = (1,1,0,0)
		[StyledSpace(10)]_OverlayEnd("[ Overlay End ]", Float) = 1
		_SecondBakeMode("_SecondBakeMode", Float) = 0
		_ThirdBakeMode("_ThirdBakeMode", Float) = 0
		_OcclusionBakeMode("_OcclusionBakeMode", Float) = 0
		_GradientBakeMode("_GradientBakeMode", Float) = 0
		_OverlayBakeMode("_OverlayBakeMode", Float) = 0
		[HideInInspector]_RenderCull("_RenderCull", Float) = 0

	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }
	LOD 100
		CGINCLUDE
		#pragma target 4.5
		ENDCG
		Cull [_RenderCull]
		

		Pass
		{
			Name "Unlit"
			CGPROGRAM
			#define ASE_USING_SAMPLING_MACROS 1

			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#pragma multi_compile_fwdbase
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_NORMAL
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local_fragment TVE_MAIN_SAMPLE_MAIN_UV TVE_MAIN_SAMPLE_EXTRA_UV TVE_MAIN_SAMPLE_PLANAR_2D TVE_MAIN_SAMPLE_PLANAR_3D TVE_MAIN_SAMPLE_STOCHASTIC_2D TVE_MAIN_SAMPLE_STOCHASTIC_3D
			#pragma shader_feature_local TVE_LEGACY
			#pragma shader_feature_local_vertex TVE_PIVOT_OFF TVE_PIVOT_BAKED TVE_PIVOT_PROC
			#pragma shader_feature_local_fragment TVE_ALPHA_CLIP
			#pragma shader_feature_local_fragment TVE_SECOND
			#pragma shader_feature_local_fragment TVE_SECOND_SAMPLE_MAIN_UV TVE_SECOND_SAMPLE_EXTRA_UV TVE_SECOND_SAMPLE_PLANAR_2D TVE_SECOND_SAMPLE_PLANAR_3D TVE_SECOND_SAMPLE_STOCHASTIC_2D TVE_SECOND_SAMPLE_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_SECOND_MASK
			#pragma shader_feature_local_fragment TVE_SECOND_MASK_SAMPLE_MAIN_UV TVE_SECOND_MASK_SAMPLE_EXTRA_UV TVE_SECOND_MASK_SAMPLE_PLANAR_2D TVE_SECOND_MASK_SAMPLE_PLANAR_3D
			#pragma shader_feature_local_fragment TVE_SECOND_PROJ
			#pragma shader_feature_local_fragment TVE_SECOND_VERT
			#pragma shader_feature_local_fragment TVE_SECOND_ELEMENT
			#pragma shader_feature_local_fragment TVE_THIRD
			#pragma shader_feature_local_fragment TVE_THIRD_SAMPLE_MAIN_UV TVE_THIRD_SAMPLE_EXTRA_UV TVE_THIRD_SAMPLE_PLANAR_2D TVE_THIRD_SAMPLE_PLANAR_3D TVE_THIRD_SAMPLE_STOCHASTIC_2D TVE_THIRD_SAMPLE_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_THIRD_MASK
			#pragma shader_feature_local_fragment TVE_THIRD_MASK_SAMPLE_MAIN_UV TVE_THIRD_MASK_SAMPLE_EXTRA_UV TVE_THIRD_MASK_SAMPLE_PLANAR_2D TVE_THIRD_MASK_SAMPLE_PLANAR_3D
			#pragma shader_feature_local_fragment TVE_THIRD_VERT
			#pragma shader_feature_local_fragment TVE_THIRD_PROJ
			#pragma shader_feature_local_fragment TVE_THIRD_ELEMENT
			#pragma shader_feature_local_fragment TVE_OCCLUSION
			#pragma shader_feature_local_fragment TVE_GRADIENT
			#pragma shader_feature_local_fragment TVE_OVERLAY
			#pragma shader_feature_local_fragment TVE_OVERLAY_TEX
			#pragma shader_feature_local_fragment TVE_OVERLAY_SAMPLE_PLANAR_2D TVE_OVERLAY_SAMPLE_PLANAR_3D TVE_OVERLAY_SAMPLE_STOCHASTIC_2D TVE_OVERLAY_SAMPLE_STOCHASTIC_3D
			#pragma shader_feature_local_fragment TVE_OVERLAY_GLITTER
			#pragma shader_feature_local_fragment TVE_OVERLAY_PROJ
			#pragma shader_feature_local_fragment TVE_OVERLAY_VERT
			#pragma shader_feature_local_fragment TVE_OVERLAY_ELEMENT
			#pragma shader_feature_local_fragment TVE_EMISSIVE
			#pragma shader_feature_local_fragment TVE_EMISSIVE_VERT
			#pragma shader_feature_local_fragment TVE_EMISSIVE_MASK
			#pragma shader_feature_local_fragment TVE_EMISSIVE_SAMPLE_MAIN_UV TVE_EMISSIVE_SAMPLE_EXTRA_UV
			#pragma shader_feature_local_fragment TVE_EMISSIVE_ELEMENT
			  
			struct TVEVisualData
			{  
				half Dummy;  
				half3 Albedo;
				half2 NormalTS;
				half3 NormalWS; 
				half4 Shader;
				half4 Emissive;
				half AlphaClip;
				half AlphaFade;
				half MultiMask;
				half Grayscale;
				half Luminosity;
				half3 Translucency;
				half Transmission;
				half Thickness;
				float Diffusion;
			};  
			    
			struct TVEModelData
			{    
				half Dummy;    
				half3 PositionOS;
				half3 PositionWS;
				half3 PositionWO;
				half3 PositionRawOS;
				half3 PositionAddOS;
				half3 PivotOS;
				half3 PivotWS;
				half3 PivotWO;
				half3 NormalOS;
				half3 NormalWS;
				half3 NormalRawOS;
				half3 NormalRawWS;
				half4 TangentOS;
				half3 ViewDirWS;
				half4 VertexData;
				half4 MotionData;
				half4 BoundsData;
				half4 RotationData;
				float4 FragmentData;
			};    
			      
			struct TVEGlobalData
			{      
				half Dummy;      
				half4 CoatParams;
				half4 PaintParams;
				half4 GlowParams;
				half4 AtmoParams;
				half4 FormParams;
				half4 LandParams;
				half4 WindParams;
				half4 PushParams;
			};      
			        
			#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
			#else//ASE Sampling Macros
			#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
			#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
			#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
			#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
			#endif//ASE Sampling Macros
			


			struct appdata
			{
				float4 vertex : POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord3 : TEXCOORD3;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
			};

			struct v2f
			{
				UNITY_POSITION(pos);
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float3 ase_normal : NORMAL;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
			};

			uniform half _RenderCull;
			uniform half _IsVersion;
			UNITY_DECLARE_TEX3D_NOSAMPLER(_NoiseTex3D);
			SamplerState sampler_NoiseTex3D;
			uniform half _EmissiveCategory;
			uniform half _EmissiveEnd;
			uniform half _EmissivePowerMode;
			uniform half _EmissivePowerValue;
			uniform half _EmissiveElementMode;
			uniform half _EmissiveFlagMode;
			uniform half _MainCategory;
			uniform half _MainEnd;
			uniform half _MessageMainMask;
			uniform half _MainSampleMode;
			uniform half _MainCoordMode;
			uniform half4 _MainCoordValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
			SamplerState sampler_Linear_Repeat_Aniso8;
			uniform half4 _main_coord_value;
			uniform half _ObjectCategory;
			uniform half _ObjectEnd;
			uniform half _ObjectModelMode;
			uniform half _ObjectPivotMode;
			uniform half _ObjectPhaseMode;
			uniform float3 TVE_WorldOrigin;
			uniform half4 _object_phase_mode;
			uniform half _ObjectHeightValue;
			uniform half _ObjectRadiusValue;
			uniform half _MainAlbedoValue;
			uniform half4 _MainColorTwo;
			uniform half4 _MainColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainShaderTex);
			SamplerState sampler_Linear_Repeat;
			uniform half _MainMetallicValue;
			uniform half _MainOcclusionValue;
			uniform half _MainSmoothnessValue;
			uniform half4 _MainMultiRemap;
			uniform half _MainColorMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
			uniform half _MainNormalValue;
			uniform half _MainAlphaClipValue;
			uniform half _LayerCategory;
			uniform half _LayerEnd;
			uniform half _SecondSampleMode;
			uniform half _SecondCoordMode;
			uniform half4 _SecondCoordValue;
			uniform half _SecondMaskSampleMode;
			uniform half _SecondMaskCoordMode;
			uniform half4 _SecondMaskCoordValue;
			uniform half _SecondElementMode;
			uniform half _SecondBakeMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondAlbedoTex);
			uniform half4 _second_coord_value;
			uniform half _SecondAlbedoValue;
			uniform half4 _SecondColorTwo;
			uniform half4 _SecondColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondShaderTex);
			uniform half _SecondMetallicValue;
			uniform half _SecondOcclusionValue;
			uniform half _SecondSmoothnessValue;
			uniform half4 _SecondMultiRemap;
			uniform half _SecondColorMode;
			uniform half _SecondBlendAlbedoValue;
			uniform half _SecondIntensityValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondMaskTex);
			uniform half4 _second_mask_coord_value;
			uniform half4 _SecondMaskRemap;
			uniform half _SecondMaskValue;
			uniform half4 _SecondProjRemap;
			uniform half _SecondProjValue;
			uniform half4 _second_vert_mode;
			uniform half4 _SecondMeshRemap;
			uniform half _SecondMeshValue;
			uniform half _SecondMeshMode;
			uniform half TVE_IsEnabled;
			uniform half4 _SecondBlendRemap;
			uniform half _SecondBlendIntensityValue;
			uniform half _SecondBlendNormalValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_SecondNormalTex);
			uniform half _SecondNormalValue;
			uniform half _SecondBlendShaderValue;
			uniform half _SecondAlphaClipValue;
			uniform half _DetailCategory;
			uniform half _DetailEnd;
			uniform half _ThirdSampleMode;
			uniform half _ThirdCoordMode;
			uniform half4 _ThirdCoordValue;
			uniform half _ThirdMaskSampleMode;
			uniform half _ThirdMaskCoordMode;
			uniform half4 _ThirdMaskCoordValue;
			uniform half _ThirdElementMode;
			uniform half _ThirdBakeMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ThirdAlbedoTex);
			uniform half4 _third_coord_value;
			uniform half _ThirdAlbedoValue;
			uniform half4 _ThirdColorTwo;
			uniform half4 _ThirdColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ThirdShaderTex);
			uniform half _ThirdMetallicValue;
			uniform half _ThirdOcclusionValue;
			uniform half _ThirdSmoothnessValue;
			uniform half4 _ThirdMultiRemap;
			uniform half _ThirdColorMode;
			uniform half _ThirdBlendAlbedoValue;
			uniform half _ThirdIntensityValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ThirdMaskTex);
			uniform half4 _third_mask_coord_value;
			uniform half4 _ThirdMaskRemap;
			uniform half _ThirdMaskValue;
			uniform half4 _third_vert_mode;
			uniform half4 _ThirdMeshRemap;
			uniform half _ThirdMeshValue;
			uniform half _ThirdMeshMode;
			uniform half4 _ThirdProjRemap;
			uniform half _ThirdProjValue;
			uniform half4 _ThirdBlendRemap;
			uniform half _ThitdBlendIntensityValue;
			uniform half _ThirdBlendNormalValue;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_ThirdNormalTex);
			uniform half _ThirdNormalValue;
			uniform half _ThitdBlendShaderValue;
			uniform half _ThirdAlphaClipValue;
			uniform half _OcclusionCategory;
			uniform half _OcclusionEnd;
			uniform half _OcclusionBakeMode;
			uniform half4 _OcclusionColorTwo;
			uniform half4 _OcclusionColorOne;
			uniform half4 _occlusion_vert_mode;
			uniform half4 _OcclusionMeshRemap;
			uniform half _OcclusionMeshMode;
			uniform half _OcclusionIntensityValue;
			uniform half _GradientCategory;
			uniform half _GradientEnd;
			uniform half _GradientBakeMode;
			uniform half4 _GradientColorTwo;
			uniform half4 _GradientColorOne;
			uniform half _GradientMultiValue;
			uniform half4 _gradient_vert_mode;
			uniform half4 _GradientMeshRemap;
			uniform half _GradientMeshMode;
			uniform half _GradientIntensityValue;
			uniform half _OverlayCategory;
			uniform half _OverlayEnd;
			uniform half _OverlaySpace;
			uniform half _OverlayElementMode;
			uniform half _OverlayBakeMode;
			uniform half4 _OverlayColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OverlayAlbedoTex);
			uniform half4 _overlay_coord_value;
			uniform half _OverlaySampleMode;
			uniform half _OverlayCoordMode;
			uniform half4 _OverlayCoordValue;
			uniform half _OverlayTextureMode;
			uniform half _OverlayGlitterIntensityValue;
			uniform half4 _OverlayGlitterColor;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OverlayGlitterTex);
			uniform half _OverlayGlitterTillingValue;
			uniform half _OverlayGlitterDistValue;
			uniform half _OverlayIntensityValue;
			uniform half4 _OverlayProjRemap;
			uniform half _OverlayProjValue;
			uniform half4 _OverlayLumaRemap;
			uniform half _OverlayLumaValue;
			uniform half4 _overlay_vert_mode;
			uniform half4 _OverlayMeshRemap;
			uniform half _OverlayMeshValue;
			uniform half _OverlayMeshMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_OverlayNormalTex);
			uniform half _OverlayNormalValue;
			uniform half _OverlaySmoothnessValue;
			uniform half _OverlaySubsurfaceValue;
			uniform half4 _emissive_vert_mode;
			uniform half4 _EmissiveMeshRemap;
			uniform half _EmissiveMeshValue;
			uniform half _EmissiveMeshMode;
			UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissiveMaskTex);
			uniform half4 _emissive_coord_value;
			uniform half _EmissiveSampleMode;
			uniform half _EmissiveCoordMode;
			uniform half4 _EmissiveCoordValue;
			uniform half4 _EmissiveMaskRemap;
			uniform half _EmissiveMaskValue;
			uniform half _EmissiveIntensityValue;
			uniform half4 _EmissiveColor;
			uniform float _emissive_power_value;
			void ComputeWorldCoords( half4 Coords, half3 WorldPosition, out half2 ZX, out half2 ZY, out half2 XY )
			{
				ZX = WorldPosition.xz * Coords.xx - Coords.zz;
				ZY = WorldPosition.yz * Coords.yx - Coords.wz; 
				XY = WorldPosition.xy * Coords.xy - Coords.zw;
			}
			
			half4 SampleMain( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half2 TexCoord )
			{
				half2 UV = TexCoord * Coords.xy + Coords.zw;
				half4 tex = SAMPLE_TEXTURE2D( Texture, Sampler, UV);
				return tex;
			}
			
			half4 SampleExtra( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, half2 TexCoord )
			{
				half2 UV = TexCoord * Coords.xy + Coords.zw;
				half4 tex = SAMPLE_TEXTURE2D( Texture, Sampler, UV);
				return tex;
			}
			
			half4 SamplePlanar2D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, float3 WorldPosition )
			{
				half2 UV = WorldPosition.xz * Coords.xy + Coords.zw;
				half4 tex = SAMPLE_TEXTURE2D( Texture, Sampler, UV);
				return tex;
			}
			
			void ComputeTriplanarWeights( half3 WorldNormal, out half T1, out half T2, out half T3 )
			{
				half3 powNormal = abs( WorldNormal.xyz );
				half3 weights = max( powNormal * powNormal * powNormal * powNormal * powNormal * powNormal * powNormal * powNormal, 0.000001 );
				weights /= ( weights.x + weights.y + weights.z ).xxx;
				T1 = weights.y;
				T2 = weights.x;
				T3 = weights.z;
			}
			
			half4 SamplePlanar3D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, float3 WorldPosition, half3 WorldNormal )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half T1, T2, T3;
				ComputeTriplanarWeights(WorldNormal, T1, T2, T3);
				half4 tex1 = SAMPLE_TEXTURE2D( Texture, Sampler, ZX);
				half4 tex2 = SAMPLE_TEXTURE2D( Texture, Sampler, ZY);
				half4 tex3 = SAMPLE_TEXTURE2D( Texture, Sampler, XY);
				return tex1 * T1 + tex2 * T2 + tex3 * T3;
			}
			
			void ComputeStochasticCoords( float2 UV, out float2 UV1, out float2 UV2, out float2 UV3, out float W1, out float W2, out float W3 )
			{
				half2 vertex1, vertex2, vertex3;
				// Scaling of the input
				half2 uv = UV * 3.464; // 2 * sqrt (3)
				// Skew input space into simplex triangle grid
				const float2x2 gridToSkewedGrid = float2x2( 1.0, 0.0, -0.57735027, 1.15470054 );
				half2 skewedCoord = mul( gridToSkewedGrid, uv );
				// Compute local triangle vertex IDs and local barycentric coordinates
				int2 baseId = int2( floor( skewedCoord ) );
				half3 temp = half3( frac( skewedCoord ), 0 );
				temp.z = 1.0 - temp.x - temp.y;
				if ( temp.z > 0.0 )
				{
					W1 = temp.z;
					W2 = temp.y;
					W3 = temp.x;
					vertex1 = baseId;
					vertex2 = baseId + int2( 0, 1 );
					vertex3 = baseId + int2( 1, 0 );
				}
				else
				{
					W1 = -temp.z;
					W2 = 1.0 - temp.y;
					W3 = 1.0 - temp.x;
					vertex1 = baseId + int2( 1, 1 );
					vertex2 = baseId + int2( 1, 0 );
					vertex3 = baseId + int2( 0, 1 );
				}
				UV1 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex1 ) ) * 43758.5453 );
				UV2 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex2 ) ) * 43758.5453 );
				UV3 = UV + frac( sin( mul( float2x2( 127.1, 311.7, 269.5, 183.3 ), vertex3 ) ) * 43758.5453 );
				return;
			}
			
			float4 SampleStochastic2D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, float3 WorldPosition )
			{
				half2 UV = WorldPosition.xz * Coords.xy + Coords.zw;
				half2 UV1, UV2, UV3;
				half W1, W2, W3;
				ComputeStochasticCoords(UV, UV1, UV2, UV3, W1, W2, W3 );
				half4 tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(UV), ddy(UV));
				half4 tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(UV), ddy(UV));
				half4 tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(UV), ddy(UV));
				return tex1 * W1 + tex2 * W2 + tex3 * W3;
			}
			
			half4 SampleStochastic3D( UNITY_DECLARE_TEX2D_NOSAMPLER(Texture), SamplerState Sampler, half4 Coords, float3 WorldPosition, half3 WorldNormal )
			{
				half2 ZX, ZY, XY;
				ComputeWorldCoords(Coords, WorldPosition, ZX, ZY, XY);
				half2 UV1, UV2, UV3;
				half W1, W2, W3;
				half4 tex1, tex2, tex3;
				ComputeStochasticCoords(ZX, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZX), ddy(ZX));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZX), ddy(ZX));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZX), ddy(ZX));
				half4 texZX = tex1 * W1 + tex2 * W2 + tex3 * W3;
				ComputeStochasticCoords(ZY, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(ZY), ddy(ZY));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(ZY), ddy(ZY));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(ZY), ddy(ZY));
				half4 texZY = tex1 * W1 + tex2 * W2 + tex3 * W3;
				ComputeStochasticCoords(XY, UV1, UV2, UV3, W1, W2, W3 );
				tex1 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV1, ddx(XY), ddy(XY));
				tex2 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV2, ddx(XY), ddy(XY));
				tex3 = SAMPLE_TEXTURE2D_GRAD( Texture, Sampler, UV3, ddx(XY), ddy(XY));
				half4 texXY = tex1 * W1 + tex2 * W2 + tex3 * W3;
				half T1, T2, T3;
				ComputeTriplanarWeights(WorldNormal, T1, T2, T3);
				return texZX * T1 + texZY * T2 + texXY * T3;
			}
			


			v2f vert(appdata v )
			{
				v2f o = (v2f)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 vertexToFrag73_g76826 = ase_worldPos;
				o.ase_texcoord3.xyz = vertexToFrag73_g76826;
				float4x4 break19_g76828 = unity_ObjectToWorld;
				float3 appendResult20_g76828 = (float3(break19_g76828[ 0 ][ 3 ] , break19_g76828[ 1 ][ 3 ] , break19_g76828[ 2 ][ 3 ]));
				half3 ObjectData20_g76830 = appendResult20_g76828;
				half3 WorldData19_g76830 = ase_worldPos;
				#ifdef TVE_OBJECT_BATCHED
				float3 staticSwitch14_g76830 = WorldData19_g76830;
				#else
				float3 staticSwitch14_g76830 = ObjectData20_g76830;
				#endif
				float3 temp_output_124_0_g76828 = staticSwitch14_g76830;
				float3 temp_output_239_7_g76826 = temp_output_124_0_g76828;
				float4x4 break19_g76832 = unity_ObjectToWorld;
				float3 appendResult20_g76832 = (float3(break19_g76832[ 0 ][ 3 ] , break19_g76832[ 1 ][ 3 ] , break19_g76832[ 2 ][ 3 ]));
				float3 _Vector0 = float3(0,0,0);
				float3 appendResult60_g76836 = (float3(v.ase_texcoord3.x , 0.0 , v.ase_texcoord3.y));
				half3 PositionOS131_g76826 = v.vertex.xyz;
				float3 break233_g76826 = PositionOS131_g76826;
				float3 appendResult234_g76826 = (float3(break233_g76826.x , 0.0 , break233_g76826.z));
				#if defined( TVE_PIVOT_OFF )
				float3 staticSwitch229_g76826 = _Vector0;
				#elif defined( TVE_PIVOT_BAKED )
				float3 staticSwitch229_g76826 = appendResult60_g76836;
				#elif defined( TVE_PIVOT_PROC )
				float3 staticSwitch229_g76826 = appendResult234_g76826;
				#else
				float3 staticSwitch229_g76826 = _Vector0;
				#endif
				half3 PivotOS149_g76826 = staticSwitch229_g76826;
				float3 temp_output_122_0_g76832 = PivotOS149_g76826;
				float3 PivotsOnly105_g76832 = (mul( unity_ObjectToWorld, float4( temp_output_122_0_g76832 , 0.0 ) ).xyz).xyz;
				half3 ObjectData20_g76834 = ( appendResult20_g76832 + PivotsOnly105_g76832 );
				half3 WorldData19_g76834 = ase_worldPos;
				#ifdef TVE_OBJECT_BATCHED
				float3 staticSwitch14_g76834 = WorldData19_g76834;
				#else
				float3 staticSwitch14_g76834 = ObjectData20_g76834;
				#endif
				float3 temp_output_124_0_g76832 = staticSwitch14_g76834;
				float3 temp_output_237_7_g76826 = temp_output_124_0_g76832;
				#if defined( TVE_PIVOT_OFF )
				float3 staticSwitch236_g76826 = temp_output_239_7_g76826;
				#elif defined( TVE_PIVOT_BAKED )
				float3 staticSwitch236_g76826 = temp_output_237_7_g76826;
				#elif defined( TVE_PIVOT_PROC )
				float3 staticSwitch236_g76826 = temp_output_237_7_g76826;
				#else
				float3 staticSwitch236_g76826 = temp_output_239_7_g76826;
				#endif
				float3 vertexToFrag76_g76826 = staticSwitch236_g76826;
				o.ase_texcoord4.xyz = vertexToFrag76_g76826;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord6.xyz = ase_worldNormal;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord7.xyz = ase_worldTangent;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord8.xyz = ase_worldBitangent;
				
				float3 objectToViewPos = UnityObjectToViewPos(v.vertex.xyz);
				float eyeDepth = -objectToViewPos.z;
				o.ase_texcoord3.w = eyeDepth;
				
				o.ase_texcoord.xy = v.ase_texcoord.xy;
				o.ase_texcoord.zw = v.ase_texcoord2.xy;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord2 = v.vertex;
				o.ase_texcoord5 = v.ase_texcoord3;
				o.ase_normal = v.ase_normal;
				o.ase_tangent = v.ase_tangent;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord8.w = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}


			void frag(v2f i ,
				out half4 outGBuffer0 : SV_Target0,
				out half4 outGBuffer1 : SV_Target1,
				out half4 outGBuffer2 : SV_Target2,
				out half4 outGBuffer3 : SV_Target3,
				out half4 outGBuffer4 : SV_Target4,
				out half4 outGBuffer5 : SV_Target5,
				out half4 outGBuffer6 : SV_Target6,
				out half4 outGBuffer7 : SV_Target7,
				out float outDepth : SV_Depth
			)
			{
				UNITY_SETUP_INSTANCE_ID( i );
				float localBreakData4_g139272 = ( 0.0 );
				float localCompData3_g139248 = ( 0.0 );
				TVEVisualData Data3_g139248 = (TVEVisualData)0;
				half Dummy145_g139236 = ( _EmissiveCategory + _EmissiveEnd + ( _EmissivePowerMode + _EmissivePowerValue ) + _EmissiveElementMode + _EmissiveFlagMode );
				float In_Dummy3_g139248 = Dummy145_g139236;
				float localBreakData4_g139247 = ( 0.0 );
				float localIfVisualData25_g138617 = ( 0.0 );
				TVEVisualData Data25_g138617 = (TVEVisualData)0;
				float localIfVisualData25_g114971 = ( 0.0 );
				TVEVisualData Data25_g114971 = (TVEVisualData)0;
				float localIfVisualData25_g114960 = ( 0.0 );
				TVEVisualData Data25_g114960 = (TVEVisualData)0;
				float localIfVisualData25_g114949 = ( 0.0 );
				TVEVisualData Data25_g114949 = (TVEVisualData)0;
				float localIfVisualData25_g114917 = ( 0.0 );
				TVEVisualData Data25_g114917 = (TVEVisualData)0;
				float localCompData3_g113736 = ( 0.0 );
				TVEVisualData Data3_g113736 = (TVEVisualData)0;
				half4 Dummy130_g113726 = ( _MainCategory + _MainEnd + _MessageMainMask + ( _MainSampleMode + _MainCoordMode + _MainCoordValue ) );
				float In_Dummy3_g113736 = Dummy130_g113726.x;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g113737) = _MainAlbedoTex;
				SamplerState Sampler276_g113737 = sampler_Linear_Repeat_Aniso8;
				half4 Local_Coords180_g113726 = _main_coord_value;
				float4 temp_output_37_0_g113737 = Local_Coords180_g113726;
				half4 Coords276_g113737 = temp_output_37_0_g113737;
				half2 TexCoord276_g113737 = i.ase_texcoord.xy;
				half4 localSampleMain276_g113737 = SampleMain( Texture276_g113737 , Sampler276_g113737 , Coords276_g113737 , TexCoord276_g113737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g113737) = _MainAlbedoTex;
				SamplerState Sampler275_g113737 = sampler_Linear_Repeat_Aniso8;
				half4 Coords275_g113737 = temp_output_37_0_g113737;
				float2 appendResult289_g113737 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g113737 = appendResult289_g113737;
				#else
				float2 staticSwitch288_g113737 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g113737 = staticSwitch288_g113737;
				half4 localSampleExtra275_g113737 = SampleExtra( Texture275_g113737 , Sampler275_g113737 , Coords275_g113737 , TexCoord275_g113737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g113737) = _MainAlbedoTex;
				SamplerState Sampler238_g113737 = sampler_Linear_Repeat_Aniso8;
				half4 Coords238_g113737 = temp_output_37_0_g113737;
				TVEModelData Data16_g76840 = (TVEModelData)0;
				half Dummy207_g76826 = ( _ObjectCategory + _ObjectEnd + _ObjectModelMode + _ObjectPivotMode + _ObjectPhaseMode );
				float In_Dummy16_g76840 = Dummy207_g76826;
				half3 PositionOS131_g76826 = i.ase_texcoord2.xyz;
				float3 In_PositionOS16_g76840 = PositionOS131_g76826;
				float3 vertexToFrag73_g76826 = i.ase_texcoord3.xyz;
				half3 PositionWS122_g76826 = vertexToFrag73_g76826;
				float3 In_PositionWS16_g76840 = PositionWS122_g76826;
				float3 vertexToFrag76_g76826 = i.ase_texcoord4.xyz;
				half3 PivotWS121_g76826 = vertexToFrag76_g76826;
				#ifdef TVE_SCOPE_DYNAMIC
				float3 staticSwitch204_g76826 = ( PositionWS122_g76826 - PivotWS121_g76826 );
				#else
				float3 staticSwitch204_g76826 = PositionWS122_g76826;
				#endif
				half3 PositionWO132_g76826 = ( staticSwitch204_g76826 - TVE_WorldOrigin );
				float3 In_PositionWO16_g76840 = PositionWO132_g76826;
				float3 In_PositionRawOS16_g76840 = PositionOS131_g76826;
				float3 In_PositionAddOS16_g76840 = float3( 0,0,0 );
				float3 _Vector0 = float3(0,0,0);
				float3 appendResult60_g76836 = (float3(i.ase_texcoord5.x , 0.0 , i.ase_texcoord5.y));
				float3 break233_g76826 = PositionOS131_g76826;
				float3 appendResult234_g76826 = (float3(break233_g76826.x , 0.0 , break233_g76826.z));
				#if defined( TVE_PIVOT_OFF )
				float3 staticSwitch229_g76826 = _Vector0;
				#elif defined( TVE_PIVOT_BAKED )
				float3 staticSwitch229_g76826 = appendResult60_g76836;
				#elif defined( TVE_PIVOT_PROC )
				float3 staticSwitch229_g76826 = appendResult234_g76826;
				#else
				float3 staticSwitch229_g76826 = _Vector0;
				#endif
				half3 PivotOS149_g76826 = staticSwitch229_g76826;
				float3 In_PivotOS16_g76840 = PivotOS149_g76826;
				float3 In_PivotWS16_g76840 = PivotWS121_g76826;
				half3 PivotWO133_g76826 = ( PivotWS121_g76826 - TVE_WorldOrigin );
				float3 In_PivotWO16_g76840 = PivotWO133_g76826;
				half3 NormalOS134_g76826 = i.ase_normal;
				float3 In_NormalOS16_g76840 = NormalOS134_g76826;
				float3 ase_worldNormal = i.ase_texcoord6.xyz;
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				half3 Normal_WS95_g76826 = normalizedWorldNormal;
				float3 In_NormalWS16_g76840 = Normal_WS95_g76826;
				float3 In_NormalRawOS16_g76840 = NormalOS134_g76826;
				float3 objToWorldDir298_g76826 = normalize( mul( unity_ObjectToWorld, float4( i.ase_normal, 0 ) ).xyz );
				half3 Normal_RawWS136_g76826 = objToWorldDir298_g76826;
				float3 In_NormalRawWS16_g76840 = Normal_RawWS136_g76826;
				half4 TangentlOS153_g76826 = i.ase_tangent;
				float4 In_TangentOS16_g76840 = TangentlOS153_g76826;
				float3 normalizeResult296_g76826 = normalize( ( _WorldSpaceCameraPos - PositionWS122_g76826 ) );
				half3 ViewDirWS169_g76826 = normalizeResult296_g76826;
				float3 In_ViewDirWS16_g76840 = ViewDirWS169_g76826;
				half4 VertexMasks171_g76826 = i.ase_color;
				float4 In_VertexData16_g76840 = VertexMasks171_g76826;
				float4 break33_g76839 = _object_phase_mode;
				float temp_output_30_0_g76839 = ( i.ase_color.r * break33_g76839.x );
				float temp_output_29_0_g76839 = ( i.ase_color.g * break33_g76839.y );
				float temp_output_31_0_g76839 = ( i.ase_color.b * break33_g76839.z );
				float temp_output_28_0_g76839 = ( temp_output_30_0_g76839 + temp_output_29_0_g76839 + temp_output_31_0_g76839 + ( i.ase_color.a * break33_g76839.w ) );
				float3 break243_g76826 = PivotWO133_g76826;
				float4 appendResult177_g76826 = (float4(1.0 , 1.0 , ( frac( ( temp_output_28_0_g76839 + ( break243_g76826.x + break243_g76826.z ) ) ) * 4.0 ) , 1.0));
				half4 MotionMasks176_g76826 = appendResult177_g76826;
				float4 In_MotionData16_g76840 = MotionMasks176_g76826;
				half Object_HeightValue267_g76826 = _ObjectHeightValue;
				half Object_RadiusValue268_g76826 = _ObjectRadiusValue;
				half Bounds_HeightMask274_g76826 = saturate( ( (PositionOS131_g76826).y / Object_HeightValue267_g76826 ) );
				half Bounds_SphereMask282_g76826 = saturate( ( length( PositionOS131_g76826 ) / max( Object_HeightValue267_g76826 , Object_RadiusValue268_g76826 ) ) );
				float4 appendResult253_g76826 = (float4(Object_HeightValue267_g76826 , Object_RadiusValue268_g76826 , Bounds_HeightMask274_g76826 , Bounds_SphereMask282_g76826));
				half4 BoundsData254_g76826 = appendResult253_g76826;
				float4 In_BoundsData16_g76840 = BoundsData254_g76826;
				float4 In_RotationData16_g76840 = float4( 0,0,0,0 );
				float4 In_FragmentData16_g76840 = float4( 0,0,0,0 );
				{
				Data16_g76840.Dummy = In_Dummy16_g76840;
				Data16_g76840.PositionOS = In_PositionOS16_g76840;
				Data16_g76840.PositionWS = In_PositionWS16_g76840;
				Data16_g76840.PositionWO = In_PositionWO16_g76840;
				Data16_g76840.PositionRawOS = In_PositionRawOS16_g76840;
				Data16_g76840.PositionAddOS = In_PositionAddOS16_g76840;
				Data16_g76840.PivotOS = In_PivotOS16_g76840;
				Data16_g76840.PivotWS = In_PivotWS16_g76840;
				Data16_g76840.PivotWO = In_PivotWO16_g76840;
				Data16_g76840.NormalOS = In_NormalOS16_g76840;
				Data16_g76840.NormalWS = In_NormalWS16_g76840;
				Data16_g76840.NormalRawOS = In_NormalRawOS16_g76840;
				Data16_g76840.NormalRawWS = In_NormalRawWS16_g76840;
				Data16_g76840.TangentOS = In_TangentOS16_g76840;
				Data16_g76840.ViewDirWS = In_ViewDirWS16_g76840;
				Data16_g76840.VertexData = In_VertexData16_g76840;
				Data16_g76840.MotionData = In_MotionData16_g76840;
				Data16_g76840.BoundsData = In_BoundsData16_g76840;
				Data16_g76840.RotationData = In_RotationData16_g76840;
				Data16_g76840.FragmentData = In_FragmentData16_g76840;
				}
				TVEModelData Data15_g113727 = Data16_g76840;
				float Out_Dummy15_g113727 = 0;
				float3 Out_PositionOS15_g113727 = float3( 0,0,0 );
				float3 Out_PositionWS15_g113727 = float3( 0,0,0 );
				float3 Out_PositionWO15_g113727 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g113727 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g113727 = float3( 0,0,0 );
				float3 Out_PivotOS15_g113727 = float3( 0,0,0 );
				float3 Out_PivotWS15_g113727 = float3( 0,0,0 );
				float3 Out_PivotWO15_g113727 = float3( 0,0,0 );
				float3 Out_NormalOS15_g113727 = float3( 0,0,0 );
				float3 Out_NormalWS15_g113727 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g113727 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g113727 = float3( 0,0,0 );
				float4 Out_TangentOS15_g113727 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g113727 = float3( 0,0,0 );
				float4 Out_VertexData15_g113727 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g113727 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g113727 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g113727 = float4( 0,0,0,0 );
				float4 Out_FragmentData15_g113727 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g113727 = Data15_g113727.Dummy;
				Out_PositionOS15_g113727 = Data15_g113727.PositionOS;
				Out_PositionWS15_g113727 = Data15_g113727.PositionWS;
				Out_PositionWO15_g113727 = Data15_g113727.PositionWO;
				Out_PositionRawOS15_g113727 = Data15_g113727.PositionRawOS;
				Out_PositionAddOS15_g113727 = Data15_g113727.PositionAddOS;
				Out_PivotOS15_g113727 = Data15_g113727.PivotOS;
				Out_PivotWS15_g113727 = Data15_g113727.PivotWS;
				Out_PivotWO15_g113727 = Data15_g113727.PivotWO;
				Out_NormalOS15_g113727 = Data15_g113727.NormalOS;
				Out_NormalWS15_g113727 = Data15_g113727.NormalWS;
				Out_NormalRawOS15_g113727 = Data15_g113727.NormalRawOS;
				Out_NormalRawWS15_g113727 = Data15_g113727.NormalRawWS;
				Out_TangentOS15_g113727 = Data15_g113727.TangentOS;
				Out_ViewDirWS15_g113727 = Data15_g113727.ViewDirWS;
				Out_VertexData15_g113727 = Data15_g113727.VertexData;
				Out_MotionData15_g113727 = Data15_g113727.MotionData;
				Out_BoundsData15_g113727 = Data15_g113727.BoundsData;
				Out_RotationData15_g113727 = Data15_g113727.RotationData;
				Out_FragmentData15_g113727 = Data15_g113727.FragmentData;
				}
				half3 Model_PositionWO222_g113726 = Out_PositionWO15_g113727;
				float3 temp_output_279_0_g113737 = Model_PositionWO222_g113726;
				half3 WorldPosition238_g113737 = temp_output_279_0_g113737;
				half4 localSamplePlanar2D238_g113737 = SamplePlanar2D( Texture238_g113737 , Sampler238_g113737 , Coords238_g113737 , WorldPosition238_g113737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g113737) = _MainAlbedoTex;
				SamplerState Sampler246_g113737 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g113737 = temp_output_37_0_g113737;
				half3 WorldPosition246_g113737 = temp_output_279_0_g113737;
				half3 Model_NormalWS226_g113726 = Out_NormalWS15_g113727;
				float3 temp_output_280_0_g113737 = Model_NormalWS226_g113726;
				half3 WorldNormal246_g113737 = temp_output_280_0_g113737;
				half4 localSamplePlanar3D246_g113737 = SamplePlanar3D( Texture246_g113737 , Sampler246_g113737 , Coords246_g113737 , WorldPosition246_g113737 , WorldNormal246_g113737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g113737) = _MainAlbedoTex;
				SamplerState Sampler234_g113737 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g113737 = temp_output_37_0_g113737;
				float3 WorldPosition234_g113737 = temp_output_279_0_g113737;
				float4 localSampleStochastic2D234_g113737 = SampleStochastic2D( Texture234_g113737 , Sampler234_g113737 , Coords234_g113737 , WorldPosition234_g113737 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g113737) = _MainAlbedoTex;
				SamplerState Sampler263_g113737 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g113737 = temp_output_37_0_g113737;
				half3 WorldPosition263_g113737 = temp_output_279_0_g113737;
				half3 WorldNormal263_g113737 = temp_output_280_0_g113737;
				half4 localSampleStochastic3D263_g113737 = SampleStochastic3D( Texture263_g113737 , Sampler263_g113737 , Coords263_g113737 , WorldPosition263_g113737 , WorldNormal263_g113737 );
				#if defined( TVE_MAIN_SAMPLE_MAIN_UV )
				float4 staticSwitch184_g113726 = localSampleMain276_g113737;
				#elif defined( TVE_MAIN_SAMPLE_EXTRA_UV )
				float4 staticSwitch184_g113726 = localSampleExtra275_g113737;
				#elif defined( TVE_MAIN_SAMPLE_PLANAR_2D )
				float4 staticSwitch184_g113726 = localSamplePlanar2D238_g113737;
				#elif defined( TVE_MAIN_SAMPLE_PLANAR_3D )
				float4 staticSwitch184_g113726 = localSamplePlanar3D246_g113737;
				#elif defined( TVE_MAIN_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch184_g113726 = localSampleStochastic2D234_g113737;
				#elif defined( TVE_MAIN_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch184_g113726 = localSampleStochastic3D263_g113737;
				#else
				float4 staticSwitch184_g113726 = localSampleMain276_g113737;
				#endif
				half4 Local_AlbedoTex185_g113726 = staticSwitch184_g113726;
				float3 lerpResult53_g113726 = lerp( float3( 1,1,1 ) , (Local_AlbedoTex185_g113726).xyz , _MainAlbedoValue);
				half3 Local_AlbedoRGB107_g113726 = lerpResult53_g113726;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g113739) = _MainShaderTex;
				SamplerState Sampler276_g113739 = sampler_Linear_Repeat;
				float4 temp_output_37_0_g113739 = Local_Coords180_g113726;
				half4 Coords276_g113739 = temp_output_37_0_g113739;
				half2 TexCoord276_g113739 = i.ase_texcoord.xy;
				half4 localSampleMain276_g113739 = SampleMain( Texture276_g113739 , Sampler276_g113739 , Coords276_g113739 , TexCoord276_g113739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g113739) = _MainShaderTex;
				SamplerState Sampler275_g113739 = sampler_Linear_Repeat;
				half4 Coords275_g113739 = temp_output_37_0_g113739;
				float2 appendResult289_g113739 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g113739 = appendResult289_g113739;
				#else
				float2 staticSwitch288_g113739 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g113739 = staticSwitch288_g113739;
				half4 localSampleExtra275_g113739 = SampleExtra( Texture275_g113739 , Sampler275_g113739 , Coords275_g113739 , TexCoord275_g113739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g113739) = _MainShaderTex;
				SamplerState Sampler238_g113739 = sampler_Linear_Repeat;
				half4 Coords238_g113739 = temp_output_37_0_g113739;
				float3 temp_output_279_0_g113739 = Model_PositionWO222_g113726;
				half3 WorldPosition238_g113739 = temp_output_279_0_g113739;
				half4 localSamplePlanar2D238_g113739 = SamplePlanar2D( Texture238_g113739 , Sampler238_g113739 , Coords238_g113739 , WorldPosition238_g113739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g113739) = _MainShaderTex;
				SamplerState Sampler246_g113739 = sampler_Linear_Repeat;
				half4 Coords246_g113739 = temp_output_37_0_g113739;
				half3 WorldPosition246_g113739 = temp_output_279_0_g113739;
				float3 temp_output_280_0_g113739 = Model_NormalWS226_g113726;
				half3 WorldNormal246_g113739 = temp_output_280_0_g113739;
				half4 localSamplePlanar3D246_g113739 = SamplePlanar3D( Texture246_g113739 , Sampler246_g113739 , Coords246_g113739 , WorldPosition246_g113739 , WorldNormal246_g113739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g113739) = _MainShaderTex;
				SamplerState Sampler234_g113739 = sampler_Linear_Repeat;
				float4 Coords234_g113739 = temp_output_37_0_g113739;
				float3 WorldPosition234_g113739 = temp_output_279_0_g113739;
				float4 localSampleStochastic2D234_g113739 = SampleStochastic2D( Texture234_g113739 , Sampler234_g113739 , Coords234_g113739 , WorldPosition234_g113739 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g113739) = _MainShaderTex;
				SamplerState Sampler263_g113739 = sampler_Linear_Repeat;
				half4 Coords263_g113739 = temp_output_37_0_g113739;
				half3 WorldPosition263_g113739 = temp_output_279_0_g113739;
				half3 WorldNormal263_g113739 = temp_output_280_0_g113739;
				half4 localSampleStochastic3D263_g113739 = SampleStochastic3D( Texture263_g113739 , Sampler263_g113739 , Coords263_g113739 , WorldPosition263_g113739 , WorldNormal263_g113739 );
				#if defined( TVE_MAIN_SAMPLE_MAIN_UV )
				float4 staticSwitch198_g113726 = localSampleMain276_g113739;
				#elif defined( TVE_MAIN_SAMPLE_EXTRA_UV )
				float4 staticSwitch198_g113726 = localSampleExtra275_g113739;
				#elif defined( TVE_MAIN_SAMPLE_PLANAR_2D )
				float4 staticSwitch198_g113726 = localSamplePlanar2D238_g113739;
				#elif defined( TVE_MAIN_SAMPLE_PLANAR_3D )
				float4 staticSwitch198_g113726 = localSamplePlanar3D246_g113739;
				#elif defined( TVE_MAIN_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch198_g113726 = localSampleStochastic2D234_g113739;
				#elif defined( TVE_MAIN_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch198_g113726 = localSampleStochastic3D263_g113739;
				#else
				float4 staticSwitch198_g113726 = localSampleMain276_g113739;
				#endif
				half4 Local_MasksTex199_g113726 = staticSwitch198_g113726;
				float lerpResult23_g113726 = lerp( 1.0 , (Local_MasksTex199_g113726).y , _MainOcclusionValue);
				float4 appendResult73_g113726 = (float4(( (Local_MasksTex199_g113726).x * _MainMetallicValue ) , lerpResult23_g113726 , (Local_MasksTex199_g113726).z , ( (Local_MasksTex199_g113726).w * _MainSmoothnessValue )));
				half4 Local_Masks109_g113726 = appendResult73_g113726;
				float clampResult17_g113732 = clamp( (Local_Masks109_g113726).z , 0.0001 , 0.9999 );
				float temp_output_7_0_g113733 = _MainMultiRemap.x;
				float temp_output_10_0_g113733 = ( _MainMultiRemap.y - temp_output_7_0_g113733 );
				half Local_MultiMask78_g113726 = saturate( ( ( clampResult17_g113732 - temp_output_7_0_g113733 ) / ( temp_output_10_0_g113733 + 0.0001 ) ) );
				float lerpResult58_g113726 = lerp( 1.0 , Local_MultiMask78_g113726 , _MainColorMode);
				float4 lerpResult62_g113726 = lerp( _MainColorTwo , _MainColor , lerpResult58_g113726);
				half3 Local_ColorRGB93_g113726 = (lerpResult62_g113726).rgb;
				half3 Local_Albedo139_g113726 = ( Local_AlbedoRGB107_g113726 * Local_ColorRGB93_g113726 );
				float3 In_Albedo3_g113736 = Local_Albedo139_g113726;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g113738) = _MainNormalTex;
				SamplerState Sampler276_g113738 = sampler_Linear_Repeat_Aniso8;
				float4 temp_output_37_0_g113738 = Local_Coords180_g113726;
				half4 Coords276_g113738 = temp_output_37_0_g113738;
				half2 TexCoord276_g113738 = i.ase_texcoord.xy;
				half4 localSampleMain276_g113738 = SampleMain( Texture276_g113738 , Sampler276_g113738 , Coords276_g113738 , TexCoord276_g113738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g113738) = _MainNormalTex;
				SamplerState Sampler275_g113738 = sampler_Linear_Repeat_Aniso8;
				half4 Coords275_g113738 = temp_output_37_0_g113738;
				float2 appendResult289_g113738 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g113738 = appendResult289_g113738;
				#else
				float2 staticSwitch288_g113738 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g113738 = staticSwitch288_g113738;
				half4 localSampleExtra275_g113738 = SampleExtra( Texture275_g113738 , Sampler275_g113738 , Coords275_g113738 , TexCoord275_g113738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g113738) = _MainNormalTex;
				SamplerState Sampler238_g113738 = sampler_Linear_Repeat_Aniso8;
				half4 Coords238_g113738 = temp_output_37_0_g113738;
				float3 temp_output_279_0_g113738 = Model_PositionWO222_g113726;
				half3 WorldPosition238_g113738 = temp_output_279_0_g113738;
				half4 localSamplePlanar2D238_g113738 = SamplePlanar2D( Texture238_g113738 , Sampler238_g113738 , Coords238_g113738 , WorldPosition238_g113738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g113738) = _MainNormalTex;
				SamplerState Sampler246_g113738 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g113738 = temp_output_37_0_g113738;
				half3 WorldPosition246_g113738 = temp_output_279_0_g113738;
				float3 temp_output_280_0_g113738 = Model_NormalWS226_g113726;
				half3 WorldNormal246_g113738 = temp_output_280_0_g113738;
				half4 localSamplePlanar3D246_g113738 = SamplePlanar3D( Texture246_g113738 , Sampler246_g113738 , Coords246_g113738 , WorldPosition246_g113738 , WorldNormal246_g113738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g113738) = _MainNormalTex;
				SamplerState Sampler234_g113738 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g113738 = temp_output_37_0_g113738;
				float3 WorldPosition234_g113738 = temp_output_279_0_g113738;
				float4 localSampleStochastic2D234_g113738 = SampleStochastic2D( Texture234_g113738 , Sampler234_g113738 , Coords234_g113738 , WorldPosition234_g113738 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g113738) = _MainNormalTex;
				SamplerState Sampler263_g113738 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g113738 = temp_output_37_0_g113738;
				half3 WorldPosition263_g113738 = temp_output_279_0_g113738;
				half3 WorldNormal263_g113738 = temp_output_280_0_g113738;
				half4 localSampleStochastic3D263_g113738 = SampleStochastic3D( Texture263_g113738 , Sampler263_g113738 , Coords263_g113738 , WorldPosition263_g113738 , WorldNormal263_g113738 );
				#if defined( TVE_MAIN_SAMPLE_MAIN_UV )
				float4 staticSwitch193_g113726 = localSampleMain276_g113738;
				#elif defined( TVE_MAIN_SAMPLE_EXTRA_UV )
				float4 staticSwitch193_g113726 = localSampleExtra275_g113738;
				#elif defined( TVE_MAIN_SAMPLE_PLANAR_2D )
				float4 staticSwitch193_g113726 = localSamplePlanar2D238_g113738;
				#elif defined( TVE_MAIN_SAMPLE_PLANAR_3D )
				float4 staticSwitch193_g113726 = localSamplePlanar3D246_g113738;
				#elif defined( TVE_MAIN_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch193_g113726 = localSampleStochastic2D234_g113738;
				#elif defined( TVE_MAIN_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch193_g113726 = localSampleStochastic3D263_g113738;
				#else
				float4 staticSwitch193_g113726 = localSampleMain276_g113738;
				#endif
				half4 Local_NormaTex191_g113726 = staticSwitch193_g113726;
				half4 Normal_Packed45_g113728 = Local_NormaTex191_g113726;
				float2 appendResult58_g113728 = (float2(( (Normal_Packed45_g113728).x * (Normal_Packed45_g113728).w ) , (Normal_Packed45_g113728).y));
				half2 Normal_Default50_g113728 = appendResult58_g113728;
				half2 Normal_ASTC41_g113728 = (Normal_Packed45_g113728).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g113728 = Normal_ASTC41_g113728;
				#else
				float2 staticSwitch38_g113728 = Normal_Default50_g113728;
				#endif
				half2 Normal_NO_DTX544_g113728 = (Normal_Packed45_g113728).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g113728 = Normal_NO_DTX544_g113728;
				#else
				float2 staticSwitch37_g113728 = staticSwitch38_g113728;
				#endif
				float2 temp_output_26_0_g113726 = ( (staticSwitch37_g113728*2.0 + -1.0) * _MainNormalValue );
				float3 ase_worldTangent = i.ase_texcoord7.xyz;
				float3 ase_worldBitangent = i.ase_texcoord8.xyz;
				float3x3 ase_worldToTangent = float3x3(ase_worldTangent,ase_worldBitangent,ase_worldNormal);
				half2 Normal_Planar45_g113729 = temp_output_26_0_g113726;
				float2 break71_g113729 = Normal_Planar45_g113729;
				float3 appendResult72_g113729 = (float3(break71_g113729.x , 0.0 , break71_g113729.y));
				float2 temp_output_205_0_g113726 = (mul( ase_worldToTangent, appendResult72_g113729 )).xy;
				#if defined( TVE_MAIN_SAMPLE_MAIN_UV )
				float2 staticSwitch204_g113726 = temp_output_26_0_g113726;
				#elif defined( TVE_MAIN_SAMPLE_EXTRA_UV )
				float2 staticSwitch204_g113726 = temp_output_26_0_g113726;
				#elif defined( TVE_MAIN_SAMPLE_PLANAR_2D )
				float2 staticSwitch204_g113726 = temp_output_205_0_g113726;
				#elif defined( TVE_MAIN_SAMPLE_PLANAR_3D )
				float2 staticSwitch204_g113726 = temp_output_205_0_g113726;
				#elif defined( TVE_MAIN_SAMPLE_STOCHASTIC_2D )
				float2 staticSwitch204_g113726 = float2( 0,0 );
				#elif defined( TVE_MAIN_SAMPLE_STOCHASTIC_3D )
				float2 staticSwitch204_g113726 = float2( 0,0 );
				#else
				float2 staticSwitch204_g113726 = temp_output_26_0_g113726;
				#endif
				half2 Local_NormalTS108_g113726 = staticSwitch204_g113726;
				float2 In_NormalTS3_g113736 = Local_NormalTS108_g113726;
				float3 appendResult68_g113730 = (float3(Local_NormalTS108_g113726 , 1.0));
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal74_g113730 = appendResult68_g113730;
				float3 worldNormal74_g113730 = normalize( float3(dot(tanToWorld0,tanNormal74_g113730), dot(tanToWorld1,tanNormal74_g113730), dot(tanToWorld2,tanNormal74_g113730)) );
				half3 Local_NormalWS250_g113726 = worldNormal74_g113730;
				float3 In_NormalWS3_g113736 = Local_NormalWS250_g113726;
				float4 In_Shader3_g113736 = Local_Masks109_g113726;
				float4 In_Emissive3_g113736 = half4(1,1,1,1);
				float3 temp_output_3_0_g113731 = Local_Albedo139_g113726;
				float dotResult20_g113731 = dot( temp_output_3_0_g113731 , float3(0.2126,0.7152,0.0722) );
				half Local_Grayscale110_g113726 = dotResult20_g113731;
				float In_Grayscale3_g113736 = Local_Grayscale110_g113726;
				float clampResult144_g113726 = clamp( saturate( ( Local_Grayscale110_g113726 * 5.0 ) ) , 0.2 , 1.0 );
				half Local_Luminosity145_g113726 = clampResult144_g113726;
				float In_Luminosity3_g113736 = Local_Luminosity145_g113726;
				float In_MultiMask3_g113736 = Local_MultiMask78_g113726;
				float temp_output_187_0_g113726 = (Local_AlbedoTex185_g113726).w;
				#ifdef TVE_ALPHA_CLIP
				float staticSwitch236_g113726 = ( temp_output_187_0_g113726 - _MainAlphaClipValue );
				#else
				float staticSwitch236_g113726 = temp_output_187_0_g113726;
				#endif
				half Local_AlphaClip111_g113726 = staticSwitch236_g113726;
				float In_AlphaClip3_g113736 = Local_AlphaClip111_g113726;
				half Local_AlphaFade246_g113726 = (lerpResult62_g113726).a;
				float In_AlphaFade3_g113736 = Local_AlphaFade246_g113726;
				float3 temp_cast_2 = (1.0).xxx;
				float3 In_Translucency3_g113736 = temp_cast_2;
				float In_Transmission3_g113736 = 1.0;
				float In_Thickness3_g113736 = 0.0;
				float In_Diffusion3_g113736 = 0.0;
				{
				Data3_g113736.Dummy = In_Dummy3_g113736;
				Data3_g113736.Albedo = In_Albedo3_g113736;
				Data3_g113736.NormalTS = In_NormalTS3_g113736;
				Data3_g113736.NormalWS = In_NormalWS3_g113736;
				Data3_g113736.Shader = In_Shader3_g113736;
				Data3_g113736.Emissive= In_Emissive3_g113736;
				Data3_g113736.MultiMask = In_MultiMask3_g113736;
				Data3_g113736.Grayscale = In_Grayscale3_g113736;
				Data3_g113736.Luminosity = In_Luminosity3_g113736;
				Data3_g113736.AlphaClip = In_AlphaClip3_g113736;
				Data3_g113736.AlphaFade = In_AlphaFade3_g113736;
				Data3_g113736.Translucency = In_Translucency3_g113736;
				Data3_g113736.Transmission = In_Transmission3_g113736;
				Data3_g113736.Thickness = In_Thickness3_g113736;
				Data3_g113736.Diffusion = In_Diffusion3_g113736;
				}
				TVEVisualData DataA25_g114917 = Data3_g113736;
				float localCompData3_g114897 = ( 0.0 );
				TVEVisualData Data3_g114897 = (TVEVisualData)0;
				half4 Dummy946_g114886 = ( ( _LayerCategory + _LayerEnd ) + ( _SecondSampleMode + _SecondCoordMode + _SecondCoordValue ) + ( _SecondMaskSampleMode + _SecondMaskCoordMode + _SecondMaskCoordValue ) + _SecondElementMode + _SecondBakeMode );
				float In_Dummy3_g114897 = Dummy946_g114886.x;
				float localBreakData4_g114900 = ( 0.0 );
				TVEVisualData Data4_g114900 = Data3_g113736;
				float Out_Dummy4_g114900 = 0;
				float3 Out_Albedo4_g114900 = float3( 0,0,0 );
				float2 Out_NormalTS4_g114900 = float2( 0,0 );
				float3 Out_NormalWS4_g114900 = float3( 0,0,0 );
				float4 Out_Shader4_g114900 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g114900 = float4( 0,0,0,0 );
				float Out_MultiMask4_g114900 = 0;
				float Out_Grayscale4_g114900 = 0;
				float Out_Luminosity4_g114900 = 0;
				float Out_AlphaClip4_g114900 = 0;
				float Out_AlphaFade4_g114900 = 0;
				float3 Out_Translucency4_g114900 = float3( 0,0,0 );
				float Out_Transmission4_g114900 = 0;
				float Out_Thickness4_g114900 = 0;
				float Out_Diffusion4_g114900 = 0;
				{
				Out_Dummy4_g114900 = Data4_g114900.Dummy;
				Out_Albedo4_g114900 = Data4_g114900.Albedo;
				Out_NormalTS4_g114900 = Data4_g114900.NormalTS;
				Out_NormalWS4_g114900 = Data4_g114900.NormalWS;
				Out_Shader4_g114900 = Data4_g114900.Shader;
				Out_Emissive4_g114900= Data4_g114900.Emissive;
				Out_MultiMask4_g114900 = Data4_g114900.MultiMask;
				Out_Grayscale4_g114900 = Data4_g114900.Grayscale;
				Out_Luminosity4_g114900= Data4_g114900.Luminosity;
				Out_AlphaClip4_g114900 = Data4_g114900.AlphaClip;
				Out_AlphaFade4_g114900 = Data4_g114900.AlphaFade;
				Out_Translucency4_g114900 = Data4_g114900.Translucency;
				Out_Transmission4_g114900 = Data4_g114900.Transmission;
				Out_Thickness4_g114900 = Data4_g114900.Thickness;
				Out_Diffusion4_g114900 = Data4_g114900.Diffusion;
				}
				half3 Visual_Albedo527_g114886 = Out_Albedo4_g114900;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g114887) = _SecondAlbedoTex;
				SamplerState Sampler276_g114887 = sampler_Linear_Repeat_Aniso8;
				half4 Local_LayerCoords790_g114886 = _second_coord_value;
				float4 temp_output_37_0_g114887 = Local_LayerCoords790_g114886;
				half4 Coords276_g114887 = temp_output_37_0_g114887;
				half2 TexCoord276_g114887 = i.ase_texcoord.xy;
				half4 localSampleMain276_g114887 = SampleMain( Texture276_g114887 , Sampler276_g114887 , Coords276_g114887 , TexCoord276_g114887 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g114887) = _SecondAlbedoTex;
				SamplerState Sampler275_g114887 = sampler_Linear_Repeat_Aniso8;
				half4 Coords275_g114887 = temp_output_37_0_g114887;
				float2 appendResult289_g114887 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g114887 = appendResult289_g114887;
				#else
				float2 staticSwitch288_g114887 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g114887 = staticSwitch288_g114887;
				half4 localSampleExtra275_g114887 = SampleExtra( Texture275_g114887 , Sampler275_g114887 , Coords275_g114887 , TexCoord275_g114887 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g114887) = _SecondAlbedoTex;
				SamplerState Sampler238_g114887 = sampler_Linear_Repeat_Aniso8;
				half4 Coords238_g114887 = temp_output_37_0_g114887;
				TVEModelData Data15_g114898 = Data16_g76840;
				float Out_Dummy15_g114898 = 0;
				float3 Out_PositionOS15_g114898 = float3( 0,0,0 );
				float3 Out_PositionWS15_g114898 = float3( 0,0,0 );
				float3 Out_PositionWO15_g114898 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g114898 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g114898 = float3( 0,0,0 );
				float3 Out_PivotOS15_g114898 = float3( 0,0,0 );
				float3 Out_PivotWS15_g114898 = float3( 0,0,0 );
				float3 Out_PivotWO15_g114898 = float3( 0,0,0 );
				float3 Out_NormalOS15_g114898 = float3( 0,0,0 );
				float3 Out_NormalWS15_g114898 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g114898 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g114898 = float3( 0,0,0 );
				float4 Out_TangentOS15_g114898 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g114898 = float3( 0,0,0 );
				float4 Out_VertexData15_g114898 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g114898 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g114898 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g114898 = float4( 0,0,0,0 );
				float4 Out_FragmentData15_g114898 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g114898 = Data15_g114898.Dummy;
				Out_PositionOS15_g114898 = Data15_g114898.PositionOS;
				Out_PositionWS15_g114898 = Data15_g114898.PositionWS;
				Out_PositionWO15_g114898 = Data15_g114898.PositionWO;
				Out_PositionRawOS15_g114898 = Data15_g114898.PositionRawOS;
				Out_PositionAddOS15_g114898 = Data15_g114898.PositionAddOS;
				Out_PivotOS15_g114898 = Data15_g114898.PivotOS;
				Out_PivotWS15_g114898 = Data15_g114898.PivotWS;
				Out_PivotWO15_g114898 = Data15_g114898.PivotWO;
				Out_NormalOS15_g114898 = Data15_g114898.NormalOS;
				Out_NormalWS15_g114898 = Data15_g114898.NormalWS;
				Out_NormalRawOS15_g114898 = Data15_g114898.NormalRawOS;
				Out_NormalRawWS15_g114898 = Data15_g114898.NormalRawWS;
				Out_TangentOS15_g114898 = Data15_g114898.TangentOS;
				Out_ViewDirWS15_g114898 = Data15_g114898.ViewDirWS;
				Out_VertexData15_g114898 = Data15_g114898.VertexData;
				Out_MotionData15_g114898 = Data15_g114898.MotionData;
				Out_BoundsData15_g114898 = Data15_g114898.BoundsData;
				Out_RotationData15_g114898 = Data15_g114898.RotationData;
				Out_FragmentData15_g114898 = Data15_g114898.FragmentData;
				}
				half3 Model_PositionWO636_g114886 = Out_PositionWO15_g114898;
				float3 temp_output_279_0_g114887 = Model_PositionWO636_g114886;
				half3 WorldPosition238_g114887 = temp_output_279_0_g114887;
				half4 localSamplePlanar2D238_g114887 = SamplePlanar2D( Texture238_g114887 , Sampler238_g114887 , Coords238_g114887 , WorldPosition238_g114887 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g114887) = _SecondAlbedoTex;
				SamplerState Sampler246_g114887 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g114887 = temp_output_37_0_g114887;
				half3 WorldPosition246_g114887 = temp_output_279_0_g114887;
				half3 Model_NormalWS869_g114886 = Out_NormalWS15_g114898;
				float3 temp_output_280_0_g114887 = Model_NormalWS869_g114886;
				half3 WorldNormal246_g114887 = temp_output_280_0_g114887;
				half4 localSamplePlanar3D246_g114887 = SamplePlanar3D( Texture246_g114887 , Sampler246_g114887 , Coords246_g114887 , WorldPosition246_g114887 , WorldNormal246_g114887 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g114887) = _SecondAlbedoTex;
				SamplerState Sampler234_g114887 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g114887 = temp_output_37_0_g114887;
				float3 WorldPosition234_g114887 = temp_output_279_0_g114887;
				float4 localSampleStochastic2D234_g114887 = SampleStochastic2D( Texture234_g114887 , Sampler234_g114887 , Coords234_g114887 , WorldPosition234_g114887 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g114887) = _SecondAlbedoTex;
				SamplerState Sampler263_g114887 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g114887 = temp_output_37_0_g114887;
				half3 WorldPosition263_g114887 = temp_output_279_0_g114887;
				half3 WorldNormal263_g114887 = temp_output_280_0_g114887;
				half4 localSampleStochastic3D263_g114887 = SampleStochastic3D( Texture263_g114887 , Sampler263_g114887 , Coords263_g114887 , WorldPosition263_g114887 , WorldNormal263_g114887 );
				#if defined( TVE_SECOND_SAMPLE_MAIN_UV )
				float4 staticSwitch693_g114886 = localSampleMain276_g114887;
				#elif defined( TVE_SECOND_SAMPLE_EXTRA_UV )
				float4 staticSwitch693_g114886 = localSampleExtra275_g114887;
				#elif defined( TVE_SECOND_SAMPLE_PLANAR_2D )
				float4 staticSwitch693_g114886 = localSamplePlanar2D238_g114887;
				#elif defined( TVE_SECOND_SAMPLE_PLANAR_3D )
				float4 staticSwitch693_g114886 = localSamplePlanar3D246_g114887;
				#elif defined( TVE_SECOND_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch693_g114886 = localSampleStochastic2D234_g114887;
				#elif defined( TVE_SECOND_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch693_g114886 = localSampleStochastic3D263_g114887;
				#else
				float4 staticSwitch693_g114886 = localSampleMain276_g114887;
				#endif
				half4 Local_AlbedoTex777_g114886 = staticSwitch693_g114886;
				float3 lerpResult716_g114886 = lerp( float3( 1,1,1 ) , (Local_AlbedoTex777_g114886).xyz , _SecondAlbedoValue);
				half3 Local_AlbedoRGB771_g114886 = lerpResult716_g114886;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g114889) = _SecondShaderTex;
				SamplerState Sampler276_g114889 = sampler_Linear_Repeat;
				float4 temp_output_37_0_g114889 = Local_LayerCoords790_g114886;
				half4 Coords276_g114889 = temp_output_37_0_g114889;
				half2 TexCoord276_g114889 = i.ase_texcoord.xy;
				half4 localSampleMain276_g114889 = SampleMain( Texture276_g114889 , Sampler276_g114889 , Coords276_g114889 , TexCoord276_g114889 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g114889) = _SecondShaderTex;
				SamplerState Sampler275_g114889 = sampler_Linear_Repeat;
				half4 Coords275_g114889 = temp_output_37_0_g114889;
				float2 appendResult289_g114889 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g114889 = appendResult289_g114889;
				#else
				float2 staticSwitch288_g114889 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g114889 = staticSwitch288_g114889;
				half4 localSampleExtra275_g114889 = SampleExtra( Texture275_g114889 , Sampler275_g114889 , Coords275_g114889 , TexCoord275_g114889 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g114889) = _SecondShaderTex;
				SamplerState Sampler238_g114889 = sampler_Linear_Repeat;
				half4 Coords238_g114889 = temp_output_37_0_g114889;
				float3 temp_output_279_0_g114889 = Model_PositionWO636_g114886;
				half3 WorldPosition238_g114889 = temp_output_279_0_g114889;
				half4 localSamplePlanar2D238_g114889 = SamplePlanar2D( Texture238_g114889 , Sampler238_g114889 , Coords238_g114889 , WorldPosition238_g114889 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g114889) = _SecondShaderTex;
				SamplerState Sampler246_g114889 = sampler_Linear_Repeat;
				half4 Coords246_g114889 = temp_output_37_0_g114889;
				half3 WorldPosition246_g114889 = temp_output_279_0_g114889;
				float3 temp_output_280_0_g114889 = Model_NormalWS869_g114886;
				half3 WorldNormal246_g114889 = temp_output_280_0_g114889;
				half4 localSamplePlanar3D246_g114889 = SamplePlanar3D( Texture246_g114889 , Sampler246_g114889 , Coords246_g114889 , WorldPosition246_g114889 , WorldNormal246_g114889 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g114889) = _SecondShaderTex;
				SamplerState Sampler234_g114889 = sampler_Linear_Repeat;
				float4 Coords234_g114889 = temp_output_37_0_g114889;
				float3 WorldPosition234_g114889 = temp_output_279_0_g114889;
				float4 localSampleStochastic2D234_g114889 = SampleStochastic2D( Texture234_g114889 , Sampler234_g114889 , Coords234_g114889 , WorldPosition234_g114889 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g114889) = _SecondShaderTex;
				SamplerState Sampler263_g114889 = sampler_Linear_Repeat;
				half4 Coords263_g114889 = temp_output_37_0_g114889;
				half3 WorldPosition263_g114889 = temp_output_279_0_g114889;
				half3 WorldNormal263_g114889 = temp_output_280_0_g114889;
				half4 localSampleStochastic3D263_g114889 = SampleStochastic3D( Texture263_g114889 , Sampler263_g114889 , Coords263_g114889 , WorldPosition263_g114889 , WorldNormal263_g114889 );
				#if defined( TVE_SECOND_SAMPLE_MAIN_UV )
				float4 staticSwitch722_g114886 = localSampleMain276_g114889;
				#elif defined( TVE_SECOND_SAMPLE_EXTRA_UV )
				float4 staticSwitch722_g114886 = localSampleExtra275_g114889;
				#elif defined( TVE_SECOND_SAMPLE_PLANAR_2D )
				float4 staticSwitch722_g114886 = localSamplePlanar2D238_g114889;
				#elif defined( TVE_SECOND_SAMPLE_PLANAR_3D )
				float4 staticSwitch722_g114886 = localSamplePlanar3D246_g114889;
				#elif defined( TVE_SECOND_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch722_g114886 = localSampleStochastic2D234_g114889;
				#elif defined( TVE_SECOND_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch722_g114886 = localSampleStochastic3D263_g114889;
				#else
				float4 staticSwitch722_g114886 = localSampleMain276_g114889;
				#endif
				half4 Local_ShaderTex775_g114886 = staticSwitch722_g114886;
				float lerpResult739_g114886 = lerp( 1.0 , (Local_ShaderTex775_g114886).y , _SecondOcclusionValue);
				float4 appendResult749_g114886 = (float4(( (Local_ShaderTex775_g114886).x * _SecondMetallicValue ) , lerpResult739_g114886 , (Local_ShaderTex775_g114886).z , ( (Local_ShaderTex775_g114886).w * _SecondSmoothnessValue )));
				half4 Local_Masks750_g114886 = appendResult749_g114886;
				float clampResult17_g114893 = clamp( (Local_Masks750_g114886).z , 0.0001 , 0.9999 );
				float temp_output_7_0_g114894 = _SecondMultiRemap.x;
				float temp_output_10_0_g114894 = ( _SecondMultiRemap.y - temp_output_7_0_g114894 );
				float temp_output_765_0_g114886 = saturate( ( ( clampResult17_g114893 - temp_output_7_0_g114894 ) / ( temp_output_10_0_g114894 + 0.0001 ) ) );
				half Local_MultiMask767_g114886 = temp_output_765_0_g114886;
				float lerpResult705_g114886 = lerp( 1.0 , Local_MultiMask767_g114886 , _SecondColorMode);
				float4 lerpResult706_g114886 = lerp( _SecondColorTwo , _SecondColor , lerpResult705_g114886);
				half3 Local_ColorRGB774_g114886 = (lerpResult706_g114886).rgb;
				half3 Local_Albedo768_g114886 = ( Local_AlbedoRGB771_g114886 * Local_ColorRGB774_g114886 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g114913 = 2.0;
				#else
				float staticSwitch1_g114913 = 4.594794;
				#endif
				float3 lerpResult985_g114886 = lerp( Local_Albedo768_g114886 , ( Visual_Albedo527_g114886 * Local_Albedo768_g114886 * staticSwitch1_g114913 ) , _SecondBlendAlbedoValue);
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g114890) = _SecondMaskTex;
				SamplerState Sampler276_g114890 = sampler_Linear_Repeat;
				half4 Local_BlendCoords813_g114886 = _second_mask_coord_value;
				float4 temp_output_37_0_g114890 = Local_BlendCoords813_g114886;
				half4 Coords276_g114890 = temp_output_37_0_g114890;
				half2 TexCoord276_g114890 = i.ase_texcoord.xy;
				half4 localSampleMain276_g114890 = SampleMain( Texture276_g114890 , Sampler276_g114890 , Coords276_g114890 , TexCoord276_g114890 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g114890) = _SecondMaskTex;
				SamplerState Sampler275_g114890 = sampler_Linear_Repeat;
				half4 Coords275_g114890 = temp_output_37_0_g114890;
				float2 appendResult289_g114890 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g114890 = appendResult289_g114890;
				#else
				float2 staticSwitch288_g114890 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g114890 = staticSwitch288_g114890;
				half4 localSampleExtra275_g114890 = SampleExtra( Texture275_g114890 , Sampler275_g114890 , Coords275_g114890 , TexCoord275_g114890 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g114890) = _SecondMaskTex;
				SamplerState Sampler238_g114890 = sampler_Linear_Repeat;
				half4 Coords238_g114890 = temp_output_37_0_g114890;
				float3 temp_output_279_0_g114890 = Model_PositionWO636_g114886;
				half3 WorldPosition238_g114890 = temp_output_279_0_g114890;
				half4 localSamplePlanar2D238_g114890 = SamplePlanar2D( Texture238_g114890 , Sampler238_g114890 , Coords238_g114890 , WorldPosition238_g114890 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g114890) = _SecondMaskTex;
				SamplerState Sampler246_g114890 = sampler_Linear_Repeat;
				half4 Coords246_g114890 = temp_output_37_0_g114890;
				half3 WorldPosition246_g114890 = temp_output_279_0_g114890;
				float3 temp_output_280_0_g114890 = Model_NormalWS869_g114886;
				half3 WorldNormal246_g114890 = temp_output_280_0_g114890;
				half4 localSamplePlanar3D246_g114890 = SamplePlanar3D( Texture246_g114890 , Sampler246_g114890 , Coords246_g114890 , WorldPosition246_g114890 , WorldNormal246_g114890 );
				#if defined( TVE_SECOND_MASK_SAMPLE_MAIN_UV )
				float4 staticSwitch817_g114886 = localSampleMain276_g114890;
				#elif defined( TVE_SECOND_MASK_SAMPLE_EXTRA_UV )
				float4 staticSwitch817_g114886 = localSampleExtra275_g114890;
				#elif defined( TVE_SECOND_MASK_SAMPLE_PLANAR_2D )
				float4 staticSwitch817_g114886 = localSamplePlanar2D238_g114890;
				#elif defined( TVE_SECOND_MASK_SAMPLE_PLANAR_3D )
				float4 staticSwitch817_g114886 = localSamplePlanar3D246_g114890;
				#else
				float4 staticSwitch817_g114886 = localSampleMain276_g114890;
				#endif
				half4 Local_MaskTex861_g114886 = staticSwitch817_g114886;
				float clampResult17_g114904 = clamp( (Local_MaskTex861_g114886).z , 0.0001 , 0.9999 );
				float temp_output_7_0_g114903 = _SecondMaskRemap.x;
				float temp_output_10_0_g114903 = ( _SecondMaskRemap.y - temp_output_7_0_g114903 );
				float lerpResult1015_g114886 = lerp( 1.0 , saturate( ( ( clampResult17_g114904 - temp_output_7_0_g114903 ) / ( temp_output_10_0_g114903 + 0.0001 ) ) ) , _SecondMaskValue);
				#ifdef TVE_SECOND_MASK
				float staticSwitch893_g114886 = lerpResult1015_g114886;
				#else
				float staticSwitch893_g114886 = 1.0;
				#endif
				half Blend_TexMask429_g114886 = staticSwitch893_g114886;
				half3 Visual_NormalWS951_g114886 = Out_NormalWS4_g114900;
				float clampResult17_g114905 = clamp( saturate( (Visual_NormalWS951_g114886).y ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g114906 = _SecondProjRemap.x;
				float temp_output_10_0_g114906 = ( _SecondProjRemap.y - temp_output_7_0_g114906 );
				float lerpResult996_g114886 = lerp( 1.0 , saturate( ( ( clampResult17_g114905 - temp_output_7_0_g114906 ) / ( temp_output_10_0_g114906 + 0.0001 ) ) ) , _SecondProjValue);
				#ifdef TVE_SECOND_PROJ
				float staticSwitch878_g114886 = lerpResult996_g114886;
				#else
				float staticSwitch878_g114886 = 1.0;
				#endif
				half Blend_ProjMask434_g114886 = staticSwitch878_g114886;
				half4 Model_VertexMasks964_g114886 = Out_VertexData15_g114898;
				float4 break965_g114886 = Model_VertexMasks964_g114886;
				float4 break33_g114907 = _second_vert_mode;
				float temp_output_30_0_g114907 = ( break965_g114886.x * break33_g114907.x );
				float temp_output_29_0_g114907 = ( break965_g114886.y * break33_g114907.y );
				float temp_output_31_0_g114907 = ( break965_g114886.z * break33_g114907.z );
				float temp_output_28_0_g114907 = ( temp_output_30_0_g114907 + temp_output_29_0_g114907 + temp_output_31_0_g114907 + ( break965_g114886.w * break33_g114907.w ) );
				float clampResult17_g114901 = clamp( temp_output_28_0_g114907 , 0.0001 , 0.9999 );
				float temp_output_7_0_g114902 = _SecondMeshRemap.x;
				float temp_output_10_0_g114902 = ( _SecondMeshRemap.y - temp_output_7_0_g114902 );
				float lerpResult1017_g114886 = lerp( 1.0 , saturate( ( ( clampResult17_g114901 - temp_output_7_0_g114902 ) / ( temp_output_10_0_g114902 + 0.0001 ) ) ) , _SecondMeshValue);
				float temp_output_6_0_g114915 = lerpResult1017_g114886;
				#ifdef TVE_REGISTER
				float staticSwitch14_g114915 = ( temp_output_6_0_g114915 + ( _SecondMeshMode * 0.0 ) );
				#else
				float staticSwitch14_g114915 = temp_output_6_0_g114915;
				#endif
				#ifdef TVE_SECOND_VERT
				float staticSwitch917_g114886 = staticSwitch14_g114915;
				#else
				float staticSwitch917_g114886 = 1.0;
				#endif
				half Blend_VertMask918_g114886 = staticSwitch917_g114886;
				float localBuildGlobalData321 = ( 0.0 );
				TVEGlobalData Data321 = (TVEGlobalData)0;
				float In_Dummy321 = 0;
				float4 _Vector1 = float4(1,1,1,1);
				float4 In_CoatParams321 = _Vector1;
				float4 In_PaintParams321 = _Vector1;
				float4 In_GlowParams321 = float4( 0,0,0,0 );
				float4 In_AtmoParams321 = _Vector1;
				float4 In_FormParams321 = float4( 0,0,0,0 );
				float4 In_WindParams321 = float4( 0,0,0,0 );
				float4 In_PushParams321 = float4( 0,0,0,0 );
				{
				Data321.Dummy = In_Dummy321;
				Data321.CoatParams = In_CoatParams321;
				Data321.PaintParams = In_PaintParams321;
				Data321.GlowParams = In_GlowParams321;
				Data321.AtmoParams = In_AtmoParams321;
				Data321.FormParams= In_FormParams321;
				Data321.WindParams = In_WindParams321;
				Data321.PushParams = In_PushParams321;
				}
				TVEGlobalData Data15_g114899 = Data321;
				float Out_Dummy15_g114899 = 0;
				float4 Out_CoatParams15_g114899 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g114899 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g114899 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g114899 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g114899 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g114899 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g114899 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g114899 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g114899 = Data15_g114899.Dummy;
				Out_CoatParams15_g114899 = Data15_g114899.CoatParams;
				Out_PaintParams15_g114899 = Data15_g114899.PaintParams;
				Out_GlowParams15_g114899 = Data15_g114899.GlowParams;
				Out_AtmoParams15_g114899= Data15_g114899.AtmoParams;
				Out_FormParams15_g114899 = Data15_g114899.FormParams;
				Out_LandParams15_g114899 = Data15_g114899.LandParams;
				Out_WindParams15_g114899 = Data15_g114899.WindParams;
				Out_PushParams15_g114899 = Data15_g114899.PushParams;
				}
				half4 Global_CoatParams975_g114886 = Out_CoatParams15_g114899;
				float lerpResult1013_g114886 = lerp( 1.0 , (Global_CoatParams975_g114886).z , TVE_IsEnabled);
				#ifdef TVE_SECOND_ELEMENT
				float staticSwitch971_g114886 = lerpResult1013_g114886;
				#else
				float staticSwitch971_g114886 = 1.0;
				#endif
				half Blend_GlobalMask972_g114886 = staticSwitch971_g114886;
				float temp_output_432_0_g114886 = ( _SecondIntensityValue * Blend_TexMask429_g114886 * Blend_ProjMask434_g114886 * Blend_VertMask918_g114886 * Blend_GlobalMask972_g114886 );
				float clampResult17_g114909 = clamp( temp_output_432_0_g114886 , 0.0001 , 0.9999 );
				float temp_output_7_0_g114908 = _SecondBlendRemap.x;
				float temp_output_10_0_g114908 = ( _SecondBlendRemap.y - temp_output_7_0_g114908 );
				half Blend_Mask412_g114886 = ( saturate( ( ( clampResult17_g114909 - temp_output_7_0_g114908 ) / ( temp_output_10_0_g114908 + 0.0001 ) ) ) * _SecondBlendIntensityValue );
				float3 lerpResult403_g114886 = lerp( Visual_Albedo527_g114886 , lerpResult985_g114886 , Blend_Mask412_g114886);
				#ifdef TVE_SECOND
				float3 staticSwitch415_g114886 = lerpResult403_g114886;
				#else
				float3 staticSwitch415_g114886 = Visual_Albedo527_g114886;
				#endif
				half3 Final_Albedo601_g114886 = staticSwitch415_g114886;
				float3 In_Albedo3_g114897 = Final_Albedo601_g114886;
				half2 Visual_NormalTS529_g114886 = Out_NormalTS4_g114900;
				float2 lerpResult40_g114911 = lerp( float2( 0,0 ) , Visual_NormalTS529_g114886 , _SecondBlendNormalValue);
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g114888) = _SecondNormalTex;
				SamplerState Sampler276_g114888 = sampler_Linear_Repeat;
				float4 temp_output_37_0_g114888 = Local_LayerCoords790_g114886;
				half4 Coords276_g114888 = temp_output_37_0_g114888;
				half2 TexCoord276_g114888 = i.ase_texcoord.xy;
				half4 localSampleMain276_g114888 = SampleMain( Texture276_g114888 , Sampler276_g114888 , Coords276_g114888 , TexCoord276_g114888 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g114888) = _SecondNormalTex;
				SamplerState Sampler275_g114888 = sampler_Linear_Repeat;
				half4 Coords275_g114888 = temp_output_37_0_g114888;
				float2 appendResult289_g114888 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g114888 = appendResult289_g114888;
				#else
				float2 staticSwitch288_g114888 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g114888 = staticSwitch288_g114888;
				half4 localSampleExtra275_g114888 = SampleExtra( Texture275_g114888 , Sampler275_g114888 , Coords275_g114888 , TexCoord275_g114888 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g114888) = _SecondNormalTex;
				SamplerState Sampler238_g114888 = sampler_Linear_Repeat;
				half4 Coords238_g114888 = temp_output_37_0_g114888;
				float3 temp_output_279_0_g114888 = Model_PositionWO636_g114886;
				half3 WorldPosition238_g114888 = temp_output_279_0_g114888;
				half4 localSamplePlanar2D238_g114888 = SamplePlanar2D( Texture238_g114888 , Sampler238_g114888 , Coords238_g114888 , WorldPosition238_g114888 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g114888) = _SecondNormalTex;
				SamplerState Sampler246_g114888 = sampler_Linear_Repeat;
				half4 Coords246_g114888 = temp_output_37_0_g114888;
				half3 WorldPosition246_g114888 = temp_output_279_0_g114888;
				float3 temp_output_280_0_g114888 = Model_NormalWS869_g114886;
				half3 WorldNormal246_g114888 = temp_output_280_0_g114888;
				half4 localSamplePlanar3D246_g114888 = SamplePlanar3D( Texture246_g114888 , Sampler246_g114888 , Coords246_g114888 , WorldPosition246_g114888 , WorldNormal246_g114888 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g114888) = _SecondNormalTex;
				SamplerState Sampler234_g114888 = sampler_Linear_Repeat;
				float4 Coords234_g114888 = temp_output_37_0_g114888;
				float3 WorldPosition234_g114888 = temp_output_279_0_g114888;
				float4 localSampleStochastic2D234_g114888 = SampleStochastic2D( Texture234_g114888 , Sampler234_g114888 , Coords234_g114888 , WorldPosition234_g114888 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g114888) = _SecondNormalTex;
				SamplerState Sampler263_g114888 = sampler_Linear_Repeat;
				half4 Coords263_g114888 = temp_output_37_0_g114888;
				half3 WorldPosition263_g114888 = temp_output_279_0_g114888;
				half3 WorldNormal263_g114888 = temp_output_280_0_g114888;
				half4 localSampleStochastic3D263_g114888 = SampleStochastic3D( Texture263_g114888 , Sampler263_g114888 , Coords263_g114888 , WorldPosition263_g114888 , WorldNormal263_g114888 );
				#if defined( TVE_SECOND_SAMPLE_MAIN_UV )
				float4 staticSwitch698_g114886 = localSampleMain276_g114888;
				#elif defined( TVE_SECOND_SAMPLE_EXTRA_UV )
				float4 staticSwitch698_g114886 = localSampleExtra275_g114888;
				#elif defined( TVE_SECOND_SAMPLE_PLANAR_2D )
				float4 staticSwitch698_g114886 = localSamplePlanar2D238_g114888;
				#elif defined( TVE_SECOND_SAMPLE_PLANAR_3D )
				float4 staticSwitch698_g114886 = localSamplePlanar3D246_g114888;
				#elif defined( TVE_SECOND_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch698_g114886 = localSampleStochastic2D234_g114888;
				#elif defined( TVE_SECOND_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch698_g114886 = localSampleStochastic3D263_g114888;
				#else
				float4 staticSwitch698_g114886 = localSampleMain276_g114888;
				#endif
				half4 Local_NormalTex776_g114886 = staticSwitch698_g114886;
				half4 Normal_Packed45_g114891 = Local_NormalTex776_g114886;
				float2 appendResult58_g114891 = (float2(( (Normal_Packed45_g114891).x * (Normal_Packed45_g114891).w ) , (Normal_Packed45_g114891).y));
				half2 Normal_Default50_g114891 = appendResult58_g114891;
				half2 Normal_ASTC41_g114891 = (Normal_Packed45_g114891).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g114891 = Normal_ASTC41_g114891;
				#else
				float2 staticSwitch38_g114891 = Normal_Default50_g114891;
				#endif
				half2 Normal_NO_DTX544_g114891 = (Normal_Packed45_g114891).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g114891 = Normal_NO_DTX544_g114891;
				#else
				float2 staticSwitch37_g114891 = staticSwitch38_g114891;
				#endif
				float2 temp_output_724_0_g114886 = ( (staticSwitch37_g114891*2.0 + -1.0) * _SecondNormalValue );
				half2 Normal_Planar45_g114892 = temp_output_724_0_g114886;
				float2 break71_g114892 = Normal_Planar45_g114892;
				float3 appendResult72_g114892 = (float3(break71_g114892.x , 0.0 , break71_g114892.y));
				float2 temp_output_858_0_g114886 = (mul( ase_worldToTangent, appendResult72_g114892 )).xy;
				#if defined( TVE_SECOND_SAMPLE_MAIN_UV )
				float2 staticSwitch727_g114886 = temp_output_724_0_g114886;
				#elif defined( TVE_SECOND_SAMPLE_EXTRA_UV )
				float2 staticSwitch727_g114886 = temp_output_724_0_g114886;
				#elif defined( TVE_SECOND_SAMPLE_PLANAR_2D )
				float2 staticSwitch727_g114886 = temp_output_858_0_g114886;
				#elif defined( TVE_SECOND_SAMPLE_PLANAR_3D )
				float2 staticSwitch727_g114886 = temp_output_858_0_g114886;
				#elif defined( TVE_SECOND_SAMPLE_STOCHASTIC_2D )
				float2 staticSwitch727_g114886 = float2( 0,0 );
				#elif defined( TVE_SECOND_SAMPLE_STOCHASTIC_3D )
				float2 staticSwitch727_g114886 = float2( 0,0 );
				#else
				float2 staticSwitch727_g114886 = temp_output_724_0_g114886;
				#endif
				half2 Local_NormalTS729_g114886 = staticSwitch727_g114886;
				float2 temp_output_36_0_g114911 = ( lerpResult40_g114911 + Local_NormalTS729_g114886 );
				float2 lerpResult405_g114886 = lerp( Visual_NormalTS529_g114886 , temp_output_36_0_g114911 , Blend_Mask412_g114886);
				#ifdef TVE_SECOND
				float2 staticSwitch418_g114886 = lerpResult405_g114886;
				#else
				float2 staticSwitch418_g114886 = Visual_NormalTS529_g114886;
				#endif
				half2 Final_NormalTS612_g114886 = staticSwitch418_g114886;
				float2 In_NormalTS3_g114897 = Final_NormalTS612_g114886;
				float3 appendResult68_g114912 = (float3(Final_NormalTS612_g114886 , 1.0));
				float3 tanNormal74_g114912 = appendResult68_g114912;
				float3 worldNormal74_g114912 = normalize( float3(dot(tanToWorld0,tanNormal74_g114912), dot(tanToWorld1,tanNormal74_g114912), dot(tanToWorld2,tanNormal74_g114912)) );
				half3 Final_NormalWS950_g114886 = worldNormal74_g114912;
				float3 In_NormalWS3_g114897 = Final_NormalWS950_g114886;
				half4 Visual_Shader531_g114886 = Out_Shader4_g114900;
				float4 lerpResult994_g114886 = lerp( Local_Masks750_g114886 , ( Visual_Shader531_g114886 * Local_Masks750_g114886 ) , _SecondBlendShaderValue);
				float4 lerpResult440_g114886 = lerp( Visual_Shader531_g114886 , lerpResult994_g114886 , Blend_Mask412_g114886);
				#ifdef TVE_SECOND
				float4 staticSwitch451_g114886 = lerpResult440_g114886;
				#else
				float4 staticSwitch451_g114886 = Visual_Shader531_g114886;
				#endif
				half4 Final_Masks613_g114886 = staticSwitch451_g114886;
				float4 In_Shader3_g114897 = Final_Masks613_g114886;
				float4 In_Emissive3_g114897 = Out_Emissive4_g114900;
				float3 temp_output_3_0_g114914 = Final_Albedo601_g114886;
				float dotResult20_g114914 = dot( temp_output_3_0_g114914 , float3(0.2126,0.7152,0.0722) );
				half Final_Grayscale615_g114886 = dotResult20_g114914;
				float In_Grayscale3_g114897 = Final_Grayscale615_g114886;
				float clampResult651_g114886 = clamp( saturate( ( Final_Grayscale615_g114886 * 5.0 ) ) , 0.2 , 1.0 );
				half Final_Luminosity652_g114886 = clampResult651_g114886;
				float In_Luminosity3_g114897 = Final_Luminosity652_g114886;
				half Visual_MultiMask547_g114886 = Out_MultiMask4_g114900;
				float lerpResult477_g114886 = lerp( Visual_MultiMask547_g114886 , Local_MultiMask767_g114886 , Blend_Mask412_g114886);
				#ifdef TVE_SECOND
				float staticSwitch482_g114886 = lerpResult477_g114886;
				#else
				float staticSwitch482_g114886 = Visual_MultiMask547_g114886;
				#endif
				half Final_MultiMask572_g114886 = staticSwitch482_g114886;
				float In_MultiMask3_g114897 = Final_MultiMask572_g114886;
				half Visual_AlphaClip559_g114886 = Out_AlphaClip4_g114900;
				float temp_output_718_0_g114886 = (Local_AlbedoTex777_g114886).w;
				#ifdef TVE_ALPHA_CLIP
				float staticSwitch932_g114886 = ( temp_output_718_0_g114886 - _SecondAlphaClipValue );
				#else
				float staticSwitch932_g114886 = temp_output_718_0_g114886;
				#endif
				half Local_AlphaClip772_g114886 = staticSwitch932_g114886;
				float lerpResult448_g114886 = lerp( Visual_AlphaClip559_g114886 , Local_AlphaClip772_g114886 , Blend_Mask412_g114886);
				#ifdef TVE_SECOND
				float staticSwitch564_g114886 = lerpResult448_g114886;
				#else
				float staticSwitch564_g114886 = Visual_AlphaClip559_g114886;
				#endif
				half Final_AlphaClip602_g114886 = staticSwitch564_g114886;
				float In_AlphaClip3_g114897 = Final_AlphaClip602_g114886;
				half Visual_AlphaFade588_g114886 = Out_AlphaFade4_g114900;
				half Local_AlphaFade773_g114886 = (lerpResult706_g114886).a;
				float lerpResult604_g114886 = lerp( Visual_AlphaFade588_g114886 , Local_AlphaFade773_g114886 , Blend_Mask412_g114886);
				#ifdef TVE_SECOND
				float staticSwitch608_g114886 = lerpResult604_g114886;
				#else
				float staticSwitch608_g114886 = Visual_AlphaFade588_g114886;
				#endif
				half Final_AlphaFade611_g114886 = staticSwitch608_g114886;
				float In_AlphaFade3_g114897 = Final_AlphaFade611_g114886;
				float3 In_Translucency3_g114897 = Out_Translucency4_g114900;
				float In_Transmission3_g114897 = Out_Transmission4_g114900;
				float In_Thickness3_g114897 = Out_Thickness4_g114900;
				float In_Diffusion3_g114897 = Out_Diffusion4_g114900;
				{
				Data3_g114897.Dummy = In_Dummy3_g114897;
				Data3_g114897.Albedo = In_Albedo3_g114897;
				Data3_g114897.NormalTS = In_NormalTS3_g114897;
				Data3_g114897.NormalWS = In_NormalWS3_g114897;
				Data3_g114897.Shader = In_Shader3_g114897;
				Data3_g114897.Emissive= In_Emissive3_g114897;
				Data3_g114897.MultiMask = In_MultiMask3_g114897;
				Data3_g114897.Grayscale = In_Grayscale3_g114897;
				Data3_g114897.Luminosity = In_Luminosity3_g114897;
				Data3_g114897.AlphaClip = In_AlphaClip3_g114897;
				Data3_g114897.AlphaFade = In_AlphaFade3_g114897;
				Data3_g114897.Translucency = In_Translucency3_g114897;
				Data3_g114897.Transmission = In_Transmission3_g114897;
				Data3_g114897.Thickness = In_Thickness3_g114897;
				Data3_g114897.Diffusion = In_Diffusion3_g114897;
				}
				TVEVisualData DataB25_g114917 = Data3_g114897;
				float Alpha25_g114917 = _SecondBakeMode;
				{
				if (Alpha25_g114917 < 0.5 )
				{
				Data25_g114917 = DataA25_g114917;
				}
				else
				{
				Data25_g114917 = DataB25_g114917;
				}
				}
				TVEVisualData DataA25_g114949 = Data25_g114917;
				float localCompData3_g114936 = ( 0.0 );
				TVEVisualData Data3_g114936 = (TVEVisualData)0;
				half4 Dummy944_g114918 = ( ( _DetailCategory + _DetailEnd ) + ( _ThirdSampleMode + _ThirdCoordMode + _ThirdCoordValue ) + ( _ThirdMaskSampleMode + _ThirdMaskCoordMode + _ThirdMaskCoordValue ) + _ThirdElementMode + _ThirdBakeMode );
				float In_Dummy3_g114936 = Dummy944_g114918.x;
				float localBreakData4_g114935 = ( 0.0 );
				TVEVisualData Data4_g114935 = Data25_g114917;
				float Out_Dummy4_g114935 = 0;
				float3 Out_Albedo4_g114935 = float3( 0,0,0 );
				float2 Out_NormalTS4_g114935 = float2( 0,0 );
				float3 Out_NormalWS4_g114935 = float3( 0,0,0 );
				float4 Out_Shader4_g114935 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g114935 = float4( 0,0,0,0 );
				float Out_MultiMask4_g114935 = 0;
				float Out_Grayscale4_g114935 = 0;
				float Out_Luminosity4_g114935 = 0;
				float Out_AlphaClip4_g114935 = 0;
				float Out_AlphaFade4_g114935 = 0;
				float3 Out_Translucency4_g114935 = float3( 0,0,0 );
				float Out_Transmission4_g114935 = 0;
				float Out_Thickness4_g114935 = 0;
				float Out_Diffusion4_g114935 = 0;
				{
				Out_Dummy4_g114935 = Data4_g114935.Dummy;
				Out_Albedo4_g114935 = Data4_g114935.Albedo;
				Out_NormalTS4_g114935 = Data4_g114935.NormalTS;
				Out_NormalWS4_g114935 = Data4_g114935.NormalWS;
				Out_Shader4_g114935 = Data4_g114935.Shader;
				Out_Emissive4_g114935= Data4_g114935.Emissive;
				Out_MultiMask4_g114935 = Data4_g114935.MultiMask;
				Out_Grayscale4_g114935 = Data4_g114935.Grayscale;
				Out_Luminosity4_g114935= Data4_g114935.Luminosity;
				Out_AlphaClip4_g114935 = Data4_g114935.AlphaClip;
				Out_AlphaFade4_g114935 = Data4_g114935.AlphaFade;
				Out_Translucency4_g114935 = Data4_g114935.Translucency;
				Out_Transmission4_g114935 = Data4_g114935.Transmission;
				Out_Thickness4_g114935 = Data4_g114935.Thickness;
				Out_Diffusion4_g114935 = Data4_g114935.Diffusion;
				}
				half3 Visual_Albedo527_g114918 = Out_Albedo4_g114935;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g114919) = _ThirdAlbedoTex;
				SamplerState Sampler276_g114919 = sampler_Linear_Repeat_Aniso8;
				half4 Local_LayerCoords790_g114918 = _third_coord_value;
				float4 temp_output_37_0_g114919 = Local_LayerCoords790_g114918;
				half4 Coords276_g114919 = temp_output_37_0_g114919;
				half2 TexCoord276_g114919 = i.ase_texcoord.xy;
				half4 localSampleMain276_g114919 = SampleMain( Texture276_g114919 , Sampler276_g114919 , Coords276_g114919 , TexCoord276_g114919 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g114919) = _ThirdAlbedoTex;
				SamplerState Sampler275_g114919 = sampler_Linear_Repeat_Aniso8;
				half4 Coords275_g114919 = temp_output_37_0_g114919;
				float2 appendResult289_g114919 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g114919 = appendResult289_g114919;
				#else
				float2 staticSwitch288_g114919 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g114919 = staticSwitch288_g114919;
				half4 localSampleExtra275_g114919 = SampleExtra( Texture275_g114919 , Sampler275_g114919 , Coords275_g114919 , TexCoord275_g114919 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g114919) = _ThirdAlbedoTex;
				SamplerState Sampler238_g114919 = sampler_Linear_Repeat_Aniso8;
				half4 Coords238_g114919 = temp_output_37_0_g114919;
				TVEModelData Data15_g114934 = Data16_g76840;
				float Out_Dummy15_g114934 = 0;
				float3 Out_PositionOS15_g114934 = float3( 0,0,0 );
				float3 Out_PositionWS15_g114934 = float3( 0,0,0 );
				float3 Out_PositionWO15_g114934 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g114934 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g114934 = float3( 0,0,0 );
				float3 Out_PivotOS15_g114934 = float3( 0,0,0 );
				float3 Out_PivotWS15_g114934 = float3( 0,0,0 );
				float3 Out_PivotWO15_g114934 = float3( 0,0,0 );
				float3 Out_NormalOS15_g114934 = float3( 0,0,0 );
				float3 Out_NormalWS15_g114934 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g114934 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g114934 = float3( 0,0,0 );
				float4 Out_TangentOS15_g114934 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g114934 = float3( 0,0,0 );
				float4 Out_VertexData15_g114934 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g114934 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g114934 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g114934 = float4( 0,0,0,0 );
				float4 Out_FragmentData15_g114934 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g114934 = Data15_g114934.Dummy;
				Out_PositionOS15_g114934 = Data15_g114934.PositionOS;
				Out_PositionWS15_g114934 = Data15_g114934.PositionWS;
				Out_PositionWO15_g114934 = Data15_g114934.PositionWO;
				Out_PositionRawOS15_g114934 = Data15_g114934.PositionRawOS;
				Out_PositionAddOS15_g114934 = Data15_g114934.PositionAddOS;
				Out_PivotOS15_g114934 = Data15_g114934.PivotOS;
				Out_PivotWS15_g114934 = Data15_g114934.PivotWS;
				Out_PivotWO15_g114934 = Data15_g114934.PivotWO;
				Out_NormalOS15_g114934 = Data15_g114934.NormalOS;
				Out_NormalWS15_g114934 = Data15_g114934.NormalWS;
				Out_NormalRawOS15_g114934 = Data15_g114934.NormalRawOS;
				Out_NormalRawWS15_g114934 = Data15_g114934.NormalRawWS;
				Out_TangentOS15_g114934 = Data15_g114934.TangentOS;
				Out_ViewDirWS15_g114934 = Data15_g114934.ViewDirWS;
				Out_VertexData15_g114934 = Data15_g114934.VertexData;
				Out_MotionData15_g114934 = Data15_g114934.MotionData;
				Out_BoundsData15_g114934 = Data15_g114934.BoundsData;
				Out_RotationData15_g114934 = Data15_g114934.RotationData;
				Out_FragmentData15_g114934 = Data15_g114934.FragmentData;
				}
				half3 Model_PositionWO636_g114918 = Out_PositionWO15_g114934;
				float3 temp_output_279_0_g114919 = Model_PositionWO636_g114918;
				half3 WorldPosition238_g114919 = temp_output_279_0_g114919;
				half4 localSamplePlanar2D238_g114919 = SamplePlanar2D( Texture238_g114919 , Sampler238_g114919 , Coords238_g114919 , WorldPosition238_g114919 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g114919) = _ThirdAlbedoTex;
				SamplerState Sampler246_g114919 = sampler_Linear_Repeat_Aniso8;
				half4 Coords246_g114919 = temp_output_37_0_g114919;
				half3 WorldPosition246_g114919 = temp_output_279_0_g114919;
				half3 Model_NormalWS869_g114918 = Out_NormalWS15_g114934;
				float3 temp_output_280_0_g114919 = Model_NormalWS869_g114918;
				half3 WorldNormal246_g114919 = temp_output_280_0_g114919;
				half4 localSamplePlanar3D246_g114919 = SamplePlanar3D( Texture246_g114919 , Sampler246_g114919 , Coords246_g114919 , WorldPosition246_g114919 , WorldNormal246_g114919 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g114919) = _ThirdAlbedoTex;
				SamplerState Sampler234_g114919 = sampler_Linear_Repeat_Aniso8;
				float4 Coords234_g114919 = temp_output_37_0_g114919;
				float3 WorldPosition234_g114919 = temp_output_279_0_g114919;
				float4 localSampleStochastic2D234_g114919 = SampleStochastic2D( Texture234_g114919 , Sampler234_g114919 , Coords234_g114919 , WorldPosition234_g114919 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g114919) = _ThirdAlbedoTex;
				SamplerState Sampler263_g114919 = sampler_Linear_Repeat_Aniso8;
				half4 Coords263_g114919 = temp_output_37_0_g114919;
				half3 WorldPosition263_g114919 = temp_output_279_0_g114919;
				half3 WorldNormal263_g114919 = temp_output_280_0_g114919;
				half4 localSampleStochastic3D263_g114919 = SampleStochastic3D( Texture263_g114919 , Sampler263_g114919 , Coords263_g114919 , WorldPosition263_g114919 , WorldNormal263_g114919 );
				#if defined( TVE_THIRD_SAMPLE_MAIN_UV )
				float4 staticSwitch693_g114918 = localSampleMain276_g114919;
				#elif defined( TVE_THIRD_SAMPLE_EXTRA_UV )
				float4 staticSwitch693_g114918 = localSampleExtra275_g114919;
				#elif defined( TVE_THIRD_SAMPLE_PLANAR_2D )
				float4 staticSwitch693_g114918 = localSamplePlanar2D238_g114919;
				#elif defined( TVE_THIRD_SAMPLE_PLANAR_3D )
				float4 staticSwitch693_g114918 = localSamplePlanar3D246_g114919;
				#elif defined( TVE_THIRD_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch693_g114918 = localSampleStochastic2D234_g114919;
				#elif defined( TVE_THIRD_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch693_g114918 = localSampleStochastic3D263_g114919;
				#else
				float4 staticSwitch693_g114918 = localSampleMain276_g114919;
				#endif
				half4 Local_AlbedoTex777_g114918 = staticSwitch693_g114918;
				float3 lerpResult716_g114918 = lerp( float3( 1,1,1 ) , (Local_AlbedoTex777_g114918).xyz , _ThirdAlbedoValue);
				half3 Local_AlbedoRGB771_g114918 = lerpResult716_g114918;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g114921) = _ThirdShaderTex;
				SamplerState Sampler276_g114921 = sampler_Linear_Repeat;
				float4 temp_output_37_0_g114921 = Local_LayerCoords790_g114918;
				half4 Coords276_g114921 = temp_output_37_0_g114921;
				half2 TexCoord276_g114921 = i.ase_texcoord.xy;
				half4 localSampleMain276_g114921 = SampleMain( Texture276_g114921 , Sampler276_g114921 , Coords276_g114921 , TexCoord276_g114921 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g114921) = _ThirdShaderTex;
				SamplerState Sampler275_g114921 = sampler_Linear_Repeat;
				half4 Coords275_g114921 = temp_output_37_0_g114921;
				float2 appendResult289_g114921 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g114921 = appendResult289_g114921;
				#else
				float2 staticSwitch288_g114921 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g114921 = staticSwitch288_g114921;
				half4 localSampleExtra275_g114921 = SampleExtra( Texture275_g114921 , Sampler275_g114921 , Coords275_g114921 , TexCoord275_g114921 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g114921) = _ThirdShaderTex;
				SamplerState Sampler238_g114921 = sampler_Linear_Repeat;
				half4 Coords238_g114921 = temp_output_37_0_g114921;
				float3 temp_output_279_0_g114921 = Model_PositionWO636_g114918;
				half3 WorldPosition238_g114921 = temp_output_279_0_g114921;
				half4 localSamplePlanar2D238_g114921 = SamplePlanar2D( Texture238_g114921 , Sampler238_g114921 , Coords238_g114921 , WorldPosition238_g114921 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g114921) = _ThirdShaderTex;
				SamplerState Sampler246_g114921 = sampler_Linear_Repeat;
				half4 Coords246_g114921 = temp_output_37_0_g114921;
				half3 WorldPosition246_g114921 = temp_output_279_0_g114921;
				float3 temp_output_280_0_g114921 = Model_NormalWS869_g114918;
				half3 WorldNormal246_g114921 = temp_output_280_0_g114921;
				half4 localSamplePlanar3D246_g114921 = SamplePlanar3D( Texture246_g114921 , Sampler246_g114921 , Coords246_g114921 , WorldPosition246_g114921 , WorldNormal246_g114921 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g114921) = _ThirdShaderTex;
				SamplerState Sampler234_g114921 = sampler_Linear_Repeat;
				float4 Coords234_g114921 = temp_output_37_0_g114921;
				float3 WorldPosition234_g114921 = temp_output_279_0_g114921;
				float4 localSampleStochastic2D234_g114921 = SampleStochastic2D( Texture234_g114921 , Sampler234_g114921 , Coords234_g114921 , WorldPosition234_g114921 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g114921) = _ThirdShaderTex;
				SamplerState Sampler263_g114921 = sampler_Linear_Repeat;
				half4 Coords263_g114921 = temp_output_37_0_g114921;
				half3 WorldPosition263_g114921 = temp_output_279_0_g114921;
				half3 WorldNormal263_g114921 = temp_output_280_0_g114921;
				half4 localSampleStochastic3D263_g114921 = SampleStochastic3D( Texture263_g114921 , Sampler263_g114921 , Coords263_g114921 , WorldPosition263_g114921 , WorldNormal263_g114921 );
				#if defined( TVE_THIRD_SAMPLE_MAIN_UV )
				float4 staticSwitch722_g114918 = localSampleMain276_g114921;
				#elif defined( TVE_THIRD_SAMPLE_EXTRA_UV )
				float4 staticSwitch722_g114918 = localSampleExtra275_g114921;
				#elif defined( TVE_THIRD_SAMPLE_PLANAR_2D )
				float4 staticSwitch722_g114918 = localSamplePlanar2D238_g114921;
				#elif defined( TVE_THIRD_SAMPLE_PLANAR_3D )
				float4 staticSwitch722_g114918 = localSamplePlanar3D246_g114921;
				#elif defined( TVE_THIRD_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch722_g114918 = localSampleStochastic2D234_g114921;
				#elif defined( TVE_THIRD_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch722_g114918 = localSampleStochastic3D263_g114921;
				#else
				float4 staticSwitch722_g114918 = localSampleMain276_g114921;
				#endif
				half4 Local_ShaderTex775_g114918 = staticSwitch722_g114918;
				float lerpResult739_g114918 = lerp( 1.0 , (Local_ShaderTex775_g114918).y , _ThirdOcclusionValue);
				float4 appendResult749_g114918 = (float4(( (Local_ShaderTex775_g114918).x * _ThirdMetallicValue ) , lerpResult739_g114918 , (Local_ShaderTex775_g114918).z , ( (Local_ShaderTex775_g114918).w * _ThirdSmoothnessValue )));
				half4 Local_Masks750_g114918 = appendResult749_g114918;
				float clampResult17_g114924 = clamp( (Local_Masks750_g114918).z , 0.0001 , 0.9999 );
				float temp_output_7_0_g114925 = _ThirdMultiRemap.x;
				float temp_output_10_0_g114925 = ( _ThirdMultiRemap.y - temp_output_7_0_g114925 );
				float temp_output_765_0_g114918 = saturate( ( ( clampResult17_g114924 - temp_output_7_0_g114925 ) / ( temp_output_10_0_g114925 + 0.0001 ) ) );
				half Local_MultiMask767_g114918 = temp_output_765_0_g114918;
				float lerpResult705_g114918 = lerp( 1.0 , Local_MultiMask767_g114918 , _ThirdColorMode);
				float4 lerpResult706_g114918 = lerp( _ThirdColorTwo , _ThirdColor , lerpResult705_g114918);
				half3 Local_ColorRGB774_g114918 = (lerpResult706_g114918).rgb;
				half3 Local_Albedo768_g114918 = ( Local_AlbedoRGB771_g114918 * Local_ColorRGB774_g114918 );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g114943 = 2.0;
				#else
				float staticSwitch1_g114943 = 4.594794;
				#endif
				float3 lerpResult985_g114918 = lerp( Local_Albedo768_g114918 , ( Visual_Albedo527_g114918 * Local_Albedo768_g114918 * staticSwitch1_g114943 ) , _ThirdBlendAlbedoValue);
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g114946) = _ThirdMaskTex;
				SamplerState Sampler276_g114946 = sampler_Linear_Repeat;
				half4 Local_MaskCoords813_g114918 = _third_mask_coord_value;
				float4 temp_output_37_0_g114946 = Local_MaskCoords813_g114918;
				half4 Coords276_g114946 = temp_output_37_0_g114946;
				half2 TexCoord276_g114946 = i.ase_texcoord.xy;
				half4 localSampleMain276_g114946 = SampleMain( Texture276_g114946 , Sampler276_g114946 , Coords276_g114946 , TexCoord276_g114946 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g114946) = _ThirdMaskTex;
				SamplerState Sampler275_g114946 = sampler_Linear_Repeat;
				half4 Coords275_g114946 = temp_output_37_0_g114946;
				float2 appendResult289_g114946 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g114946 = appendResult289_g114946;
				#else
				float2 staticSwitch288_g114946 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g114946 = staticSwitch288_g114946;
				half4 localSampleExtra275_g114946 = SampleExtra( Texture275_g114946 , Sampler275_g114946 , Coords275_g114946 , TexCoord275_g114946 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g114946) = _ThirdMaskTex;
				SamplerState Sampler238_g114946 = sampler_Linear_Repeat;
				half4 Coords238_g114946 = temp_output_37_0_g114946;
				float3 temp_output_279_0_g114946 = Model_PositionWO636_g114918;
				half3 WorldPosition238_g114946 = temp_output_279_0_g114946;
				half4 localSamplePlanar2D238_g114946 = SamplePlanar2D( Texture238_g114946 , Sampler238_g114946 , Coords238_g114946 , WorldPosition238_g114946 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g114946) = _ThirdMaskTex;
				SamplerState Sampler246_g114946 = sampler_Linear_Repeat;
				half4 Coords246_g114946 = temp_output_37_0_g114946;
				half3 WorldPosition246_g114946 = temp_output_279_0_g114946;
				float3 temp_output_280_0_g114946 = Model_NormalWS869_g114918;
				half3 WorldNormal246_g114946 = temp_output_280_0_g114946;
				half4 localSamplePlanar3D246_g114946 = SamplePlanar3D( Texture246_g114946 , Sampler246_g114946 , Coords246_g114946 , WorldPosition246_g114946 , WorldNormal246_g114946 );
				#if defined( TVE_THIRD_MASK_SAMPLE_MAIN_UV )
				float4 staticSwitch817_g114918 = localSampleMain276_g114946;
				#elif defined( TVE_THIRD_MASK_SAMPLE_EXTRA_UV )
				float4 staticSwitch817_g114918 = localSampleExtra275_g114946;
				#elif defined( TVE_THIRD_MASK_SAMPLE_PLANAR_2D )
				float4 staticSwitch817_g114918 = localSamplePlanar2D238_g114946;
				#elif defined( TVE_THIRD_MASK_SAMPLE_PLANAR_3D )
				float4 staticSwitch817_g114918 = localSamplePlanar3D246_g114946;
				#else
				float4 staticSwitch817_g114918 = localSampleMain276_g114946;
				#endif
				half4 Local_MaskTex861_g114918 = staticSwitch817_g114918;
				float clampResult17_g114929 = clamp( (Local_MaskTex861_g114918).y , 0.0001 , 0.9999 );
				float temp_output_7_0_g114930 = _ThirdMaskRemap.x;
				float temp_output_10_0_g114930 = ( _ThirdMaskRemap.y - temp_output_7_0_g114930 );
				float lerpResult1028_g114918 = lerp( 1.0 , saturate( ( ( clampResult17_g114929 - temp_output_7_0_g114930 ) / ( temp_output_10_0_g114930 + 0.0001 ) ) ) , _ThirdMaskValue);
				#ifdef TVE_THIRD_MASK
				float staticSwitch892_g114918 = lerpResult1028_g114918;
				#else
				float staticSwitch892_g114918 = 1.0;
				#endif
				half Detail_TexMask429_g114918 = staticSwitch892_g114918;
				half4 Model_VertexMasks960_g114918 = Out_VertexData15_g114934;
				float4 break961_g114918 = Model_VertexMasks960_g114918;
				float4 break33_g114933 = _third_vert_mode;
				float temp_output_30_0_g114933 = ( break961_g114918.x * break33_g114933.x );
				float temp_output_29_0_g114933 = ( break961_g114918.y * break33_g114933.y );
				float temp_output_31_0_g114933 = ( break961_g114918.z * break33_g114933.z );
				float temp_output_28_0_g114933 = ( temp_output_30_0_g114933 + temp_output_29_0_g114933 + temp_output_31_0_g114933 + ( break961_g114918.w * break33_g114933.w ) );
				float clampResult17_g114927 = clamp( temp_output_28_0_g114933 , 0.0001 , 0.9999 );
				float temp_output_7_0_g114928 = _ThirdMeshRemap.x;
				float temp_output_10_0_g114928 = ( _ThirdMeshRemap.y - temp_output_7_0_g114928 );
				float lerpResult1026_g114918 = lerp( 1.0 , saturate( ( ( clampResult17_g114927 - temp_output_7_0_g114928 ) / ( temp_output_10_0_g114928 + 0.0001 ) ) ) , _ThirdMeshValue);
				float temp_output_6_0_g114945 = lerpResult1026_g114918;
				#ifdef TVE_REGISTER
				float staticSwitch14_g114945 = ( temp_output_6_0_g114945 + ( _ThirdMeshMode * 0.0 ) );
				#else
				float staticSwitch14_g114945 = temp_output_6_0_g114945;
				#endif
				#ifdef TVE_THIRD_VERT
				float staticSwitch917_g114918 = staticSwitch14_g114945;
				#else
				float staticSwitch917_g114918 = 1.0;
				#endif
				half Blend_VertMask913_g114918 = staticSwitch917_g114918;
				half3 Visual_NormalWS953_g114918 = Out_NormalWS4_g114935;
				float clampResult17_g114931 = clamp( saturate( (Visual_NormalWS953_g114918).y ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g114932 = _ThirdProjRemap.x;
				float temp_output_10_0_g114932 = ( _ThirdProjRemap.y - temp_output_7_0_g114932 );
				float lerpResult1004_g114918 = lerp( 1.0 , saturate( ( ( clampResult17_g114931 - temp_output_7_0_g114932 ) / ( temp_output_10_0_g114932 + 0.0001 ) ) ) , _ThirdProjValue);
				#ifdef TVE_THIRD_PROJ
				float staticSwitch908_g114918 = lerpResult1004_g114918;
				#else
				float staticSwitch908_g114918 = 1.0;
				#endif
				half Blend_ProjMask912_g114918 = staticSwitch908_g114918;
				TVEGlobalData Data15_g114937 = Data321;
				float Out_Dummy15_g114937 = 0;
				float4 Out_CoatParams15_g114937 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g114937 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g114937 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g114937 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g114937 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g114937 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g114937 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g114937 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g114937 = Data15_g114937.Dummy;
				Out_CoatParams15_g114937 = Data15_g114937.CoatParams;
				Out_PaintParams15_g114937 = Data15_g114937.PaintParams;
				Out_GlowParams15_g114937 = Data15_g114937.GlowParams;
				Out_AtmoParams15_g114937= Data15_g114937.AtmoParams;
				Out_FormParams15_g114937 = Data15_g114937.FormParams;
				Out_LandParams15_g114937 = Data15_g114937.LandParams;
				Out_WindParams15_g114937 = Data15_g114937.WindParams;
				Out_PushParams15_g114937 = Data15_g114937.PushParams;
				}
				half4 Global_CoatParams972_g114918 = Out_CoatParams15_g114937;
				float lerpResult1023_g114918 = lerp( 1.0 , (Global_CoatParams972_g114918).y , TVE_IsEnabled);
				#ifdef TVE_THIRD_ELEMENT
				float staticSwitch965_g114918 = lerpResult1023_g114918;
				#else
				float staticSwitch965_g114918 = 1.0;
				#endif
				half Blend_GlobalMask968_g114918 = staticSwitch965_g114918;
				float temp_output_432_0_g114918 = ( _ThirdIntensityValue * Detail_TexMask429_g114918 * Blend_VertMask913_g114918 * Blend_ProjMask912_g114918 * Blend_GlobalMask968_g114918 );
				float clampResult17_g114939 = clamp( temp_output_432_0_g114918 , 0.0001 , 0.9999 );
				float temp_output_7_0_g114938 = _ThirdBlendRemap.x;
				float temp_output_10_0_g114938 = ( _ThirdBlendRemap.y - temp_output_7_0_g114938 );
				half Detail_Mask412_g114918 = ( saturate( ( ( clampResult17_g114939 - temp_output_7_0_g114938 ) / ( temp_output_10_0_g114938 + 0.0001 ) ) ) * _ThitdBlendIntensityValue );
				float3 lerpResult989_g114918 = lerp( Visual_Albedo527_g114918 , lerpResult985_g114918 , Detail_Mask412_g114918);
				#ifdef TVE_THIRD
				float3 staticSwitch415_g114918 = lerpResult989_g114918;
				#else
				float3 staticSwitch415_g114918 = Visual_Albedo527_g114918;
				#endif
				half3 Final_Albedo601_g114918 = staticSwitch415_g114918;
				float3 In_Albedo3_g114936 = Final_Albedo601_g114918;
				half2 Visual_NormalTS529_g114918 = Out_NormalTS4_g114935;
				float2 lerpResult40_g114941 = lerp( float2( 0,0 ) , Visual_NormalTS529_g114918 , _ThirdBlendNormalValue);
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g114920) = _ThirdNormalTex;
				SamplerState Sampler276_g114920 = sampler_Linear_Repeat;
				float4 temp_output_37_0_g114920 = Local_LayerCoords790_g114918;
				half4 Coords276_g114920 = temp_output_37_0_g114920;
				half2 TexCoord276_g114920 = i.ase_texcoord.xy;
				half4 localSampleMain276_g114920 = SampleMain( Texture276_g114920 , Sampler276_g114920 , Coords276_g114920 , TexCoord276_g114920 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g114920) = _ThirdNormalTex;
				SamplerState Sampler275_g114920 = sampler_Linear_Repeat;
				half4 Coords275_g114920 = temp_output_37_0_g114920;
				float2 appendResult289_g114920 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g114920 = appendResult289_g114920;
				#else
				float2 staticSwitch288_g114920 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g114920 = staticSwitch288_g114920;
				half4 localSampleExtra275_g114920 = SampleExtra( Texture275_g114920 , Sampler275_g114920 , Coords275_g114920 , TexCoord275_g114920 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g114920) = _ThirdNormalTex;
				SamplerState Sampler238_g114920 = sampler_Linear_Repeat;
				half4 Coords238_g114920 = temp_output_37_0_g114920;
				float3 temp_output_279_0_g114920 = Model_PositionWO636_g114918;
				half3 WorldPosition238_g114920 = temp_output_279_0_g114920;
				half4 localSamplePlanar2D238_g114920 = SamplePlanar2D( Texture238_g114920 , Sampler238_g114920 , Coords238_g114920 , WorldPosition238_g114920 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g114920) = _ThirdNormalTex;
				SamplerState Sampler246_g114920 = sampler_Linear_Repeat;
				half4 Coords246_g114920 = temp_output_37_0_g114920;
				half3 WorldPosition246_g114920 = temp_output_279_0_g114920;
				float3 temp_output_280_0_g114920 = Model_NormalWS869_g114918;
				half3 WorldNormal246_g114920 = temp_output_280_0_g114920;
				half4 localSamplePlanar3D246_g114920 = SamplePlanar3D( Texture246_g114920 , Sampler246_g114920 , Coords246_g114920 , WorldPosition246_g114920 , WorldNormal246_g114920 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g114920) = _ThirdNormalTex;
				SamplerState Sampler234_g114920 = sampler_Linear_Repeat;
				float4 Coords234_g114920 = temp_output_37_0_g114920;
				float3 WorldPosition234_g114920 = temp_output_279_0_g114920;
				float4 localSampleStochastic2D234_g114920 = SampleStochastic2D( Texture234_g114920 , Sampler234_g114920 , Coords234_g114920 , WorldPosition234_g114920 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g114920) = _ThirdNormalTex;
				SamplerState Sampler263_g114920 = sampler_Linear_Repeat;
				half4 Coords263_g114920 = temp_output_37_0_g114920;
				half3 WorldPosition263_g114920 = temp_output_279_0_g114920;
				half3 WorldNormal263_g114920 = temp_output_280_0_g114920;
				half4 localSampleStochastic3D263_g114920 = SampleStochastic3D( Texture263_g114920 , Sampler263_g114920 , Coords263_g114920 , WorldPosition263_g114920 , WorldNormal263_g114920 );
				#if defined( TVE_THIRD_SAMPLE_MAIN_UV )
				float4 staticSwitch698_g114918 = localSampleMain276_g114920;
				#elif defined( TVE_THIRD_SAMPLE_EXTRA_UV )
				float4 staticSwitch698_g114918 = localSampleExtra275_g114920;
				#elif defined( TVE_THIRD_SAMPLE_PLANAR_2D )
				float4 staticSwitch698_g114918 = localSamplePlanar2D238_g114920;
				#elif defined( TVE_THIRD_SAMPLE_PLANAR_3D )
				float4 staticSwitch698_g114918 = localSamplePlanar3D246_g114920;
				#elif defined( TVE_THIRD_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch698_g114918 = localSampleStochastic2D234_g114920;
				#elif defined( TVE_THIRD_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch698_g114918 = localSampleStochastic3D263_g114920;
				#else
				float4 staticSwitch698_g114918 = localSampleMain276_g114920;
				#endif
				half4 Local_NormalTex776_g114918 = staticSwitch698_g114918;
				half4 Normal_Packed45_g114922 = Local_NormalTex776_g114918;
				float2 appendResult58_g114922 = (float2(( (Normal_Packed45_g114922).x * (Normal_Packed45_g114922).w ) , (Normal_Packed45_g114922).y));
				half2 Normal_Default50_g114922 = appendResult58_g114922;
				half2 Normal_ASTC41_g114922 = (Normal_Packed45_g114922).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g114922 = Normal_ASTC41_g114922;
				#else
				float2 staticSwitch38_g114922 = Normal_Default50_g114922;
				#endif
				half2 Normal_NO_DTX544_g114922 = (Normal_Packed45_g114922).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g114922 = Normal_NO_DTX544_g114922;
				#else
				float2 staticSwitch37_g114922 = staticSwitch38_g114922;
				#endif
				float2 temp_output_724_0_g114918 = ( (staticSwitch37_g114922*2.0 + -1.0) * _ThirdNormalValue );
				half2 Normal_Planar45_g114923 = temp_output_724_0_g114918;
				float2 break71_g114923 = Normal_Planar45_g114923;
				float3 appendResult72_g114923 = (float3(break71_g114923.x , 0.0 , break71_g114923.y));
				float2 temp_output_858_0_g114918 = (mul( ase_worldToTangent, appendResult72_g114923 )).xy;
				#if defined( TVE_THIRD_SAMPLE_MAIN_UV )
				float2 staticSwitch727_g114918 = temp_output_724_0_g114918;
				#elif defined( TVE_THIRD_SAMPLE_EXTRA_UV )
				float2 staticSwitch727_g114918 = temp_output_724_0_g114918;
				#elif defined( TVE_THIRD_SAMPLE_PLANAR_2D )
				float2 staticSwitch727_g114918 = temp_output_858_0_g114918;
				#elif defined( TVE_THIRD_SAMPLE_PLANAR_3D )
				float2 staticSwitch727_g114918 = temp_output_858_0_g114918;
				#elif defined( TVE_THIRD_SAMPLE_STOCHASTIC_2D )
				float2 staticSwitch727_g114918 = float2( 0,0 );
				#elif defined( TVE_THIRD_SAMPLE_STOCHASTIC_3D )
				float2 staticSwitch727_g114918 = float2( 0,0 );
				#else
				float2 staticSwitch727_g114918 = temp_output_724_0_g114918;
				#endif
				half2 Local_NormalTS729_g114918 = staticSwitch727_g114918;
				float2 temp_output_36_0_g114941 = ( lerpResult40_g114941 + Local_NormalTS729_g114918 );
				float2 lerpResult405_g114918 = lerp( Visual_NormalTS529_g114918 , temp_output_36_0_g114941 , Detail_Mask412_g114918);
				#ifdef TVE_THIRD
				float2 staticSwitch418_g114918 = lerpResult405_g114918;
				#else
				float2 staticSwitch418_g114918 = Visual_NormalTS529_g114918;
				#endif
				half2 Final_NormalTS612_g114918 = staticSwitch418_g114918;
				float2 In_NormalTS3_g114936 = Final_NormalTS612_g114918;
				float3 appendResult68_g114942 = (float3(Final_NormalTS612_g114918 , 1.0));
				float3 tanNormal74_g114942 = appendResult68_g114942;
				float3 worldNormal74_g114942 = normalize( float3(dot(tanToWorld0,tanNormal74_g114942), dot(tanToWorld1,tanNormal74_g114942), dot(tanToWorld2,tanNormal74_g114942)) );
				half3 Final_NormalWS956_g114918 = worldNormal74_g114942;
				float3 In_NormalWS3_g114936 = Final_NormalWS956_g114918;
				half4 Visual_Shader531_g114918 = Out_Shader4_g114935;
				float4 lerpResult1000_g114918 = lerp( Local_Masks750_g114918 , ( Visual_Shader531_g114918 * Local_Masks750_g114918 ) , _ThitdBlendShaderValue);
				float4 lerpResult998_g114918 = lerp( Visual_Shader531_g114918 , lerpResult1000_g114918 , Detail_Mask412_g114918);
				#ifdef TVE_THIRD
				float4 staticSwitch451_g114918 = lerpResult998_g114918;
				#else
				float4 staticSwitch451_g114918 = Visual_Shader531_g114918;
				#endif
				half4 Final_Masks613_g114918 = staticSwitch451_g114918;
				float4 In_Shader3_g114936 = Final_Masks613_g114918;
				float4 In_Emissive3_g114936 = Out_Emissive4_g114935;
				float3 temp_output_3_0_g114944 = Final_Albedo601_g114918;
				float dotResult20_g114944 = dot( temp_output_3_0_g114944 , float3(0.2126,0.7152,0.0722) );
				half Final_Grayscale615_g114918 = dotResult20_g114944;
				float In_Grayscale3_g114936 = Final_Grayscale615_g114918;
				float clampResult651_g114918 = clamp( saturate( ( Final_Grayscale615_g114918 * 5.0 ) ) , 0.2 , 1.0 );
				half Final_Luminosity652_g114918 = clampResult651_g114918;
				float In_Luminosity3_g114936 = Final_Luminosity652_g114918;
				half Visual_MultiMask547_g114918 = Out_MultiMask4_g114935;
				float lerpResult477_g114918 = lerp( Visual_MultiMask547_g114918 , Local_MultiMask767_g114918 , Detail_Mask412_g114918);
				#ifdef TVE_THIRD
				float staticSwitch482_g114918 = lerpResult477_g114918;
				#else
				float staticSwitch482_g114918 = Visual_MultiMask547_g114918;
				#endif
				half Final_MultiMask572_g114918 = staticSwitch482_g114918;
				float In_MultiMask3_g114936 = Final_MultiMask572_g114918;
				half Visual_AlphaClip559_g114918 = Out_AlphaClip4_g114935;
				float temp_output_718_0_g114918 = (Local_AlbedoTex777_g114918).w;
				#ifdef TVE_ALPHA_CLIP
				float staticSwitch924_g114918 = ( temp_output_718_0_g114918 - _ThirdAlphaClipValue );
				#else
				float staticSwitch924_g114918 = temp_output_718_0_g114918;
				#endif
				half Local_AlphaClip772_g114918 = staticSwitch924_g114918;
				float lerpResult448_g114918 = lerp( Visual_AlphaClip559_g114918 , Local_AlphaClip772_g114918 , Detail_Mask412_g114918);
				#ifdef TVE_THIRD
				float staticSwitch564_g114918 = lerpResult448_g114918;
				#else
				float staticSwitch564_g114918 = Visual_AlphaClip559_g114918;
				#endif
				half Final_AlphaClip602_g114918 = staticSwitch564_g114918;
				float In_AlphaClip3_g114936 = Final_AlphaClip602_g114918;
				half Visual_AlphaFade588_g114918 = Out_AlphaFade4_g114935;
				half Local_AlphaFade773_g114918 = (lerpResult706_g114918).a;
				float lerpResult604_g114918 = lerp( Visual_AlphaFade588_g114918 , Local_AlphaFade773_g114918 , Detail_Mask412_g114918);
				#ifdef TVE_THIRD
				float staticSwitch608_g114918 = lerpResult604_g114918;
				#else
				float staticSwitch608_g114918 = Visual_AlphaFade588_g114918;
				#endif
				half Final_AlphaFade611_g114918 = staticSwitch608_g114918;
				float In_AlphaFade3_g114936 = Final_AlphaFade611_g114918;
				float3 In_Translucency3_g114936 = Out_Translucency4_g114935;
				float In_Transmission3_g114936 = Out_Transmission4_g114935;
				float In_Thickness3_g114936 = Out_Thickness4_g114935;
				float In_Diffusion3_g114936 = Out_Diffusion4_g114935;
				{
				Data3_g114936.Dummy = In_Dummy3_g114936;
				Data3_g114936.Albedo = In_Albedo3_g114936;
				Data3_g114936.NormalTS = In_NormalTS3_g114936;
				Data3_g114936.NormalWS = In_NormalWS3_g114936;
				Data3_g114936.Shader = In_Shader3_g114936;
				Data3_g114936.Emissive= In_Emissive3_g114936;
				Data3_g114936.MultiMask = In_MultiMask3_g114936;
				Data3_g114936.Grayscale = In_Grayscale3_g114936;
				Data3_g114936.Luminosity = In_Luminosity3_g114936;
				Data3_g114936.AlphaClip = In_AlphaClip3_g114936;
				Data3_g114936.AlphaFade = In_AlphaFade3_g114936;
				Data3_g114936.Translucency = In_Translucency3_g114936;
				Data3_g114936.Transmission = In_Transmission3_g114936;
				Data3_g114936.Thickness = In_Thickness3_g114936;
				Data3_g114936.Diffusion = In_Diffusion3_g114936;
				}
				TVEVisualData DataB25_g114949 = Data3_g114936;
				float Alpha25_g114949 = _ThirdBakeMode;
				{
				if (Alpha25_g114949 < 0.5 )
				{
				Data25_g114949 = DataA25_g114949;
				}
				else
				{
				Data25_g114949 = DataB25_g114949;
				}
				}
				TVEVisualData DataA25_g114960 = Data25_g114949;
				float localCompData3_g114952 = ( 0.0 );
				TVEVisualData Data3_g114952 = (TVEVisualData)0;
				half Dummy202_g114950 = ( _OcclusionCategory + _OcclusionEnd + _OcclusionBakeMode );
				float In_Dummy3_g114952 = Dummy202_g114950;
				float localBreakData4_g114951 = ( 0.0 );
				TVEVisualData Data4_g114951 = Data25_g114949;
				float Out_Dummy4_g114951 = 0;
				float3 Out_Albedo4_g114951 = float3( 0,0,0 );
				float2 Out_NormalTS4_g114951 = float2( 0,0 );
				float3 Out_NormalWS4_g114951 = float3( 0,0,0 );
				float4 Out_Shader4_g114951 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g114951 = float4( 0,0,0,0 );
				float Out_MultiMask4_g114951 = 0;
				float Out_Grayscale4_g114951 = 0;
				float Out_Luminosity4_g114951 = 0;
				float Out_AlphaClip4_g114951 = 0;
				float Out_AlphaFade4_g114951 = 0;
				float3 Out_Translucency4_g114951 = float3( 0,0,0 );
				float Out_Transmission4_g114951 = 0;
				float Out_Thickness4_g114951 = 0;
				float Out_Diffusion4_g114951 = 0;
				{
				Out_Dummy4_g114951 = Data4_g114951.Dummy;
				Out_Albedo4_g114951 = Data4_g114951.Albedo;
				Out_NormalTS4_g114951 = Data4_g114951.NormalTS;
				Out_NormalWS4_g114951 = Data4_g114951.NormalWS;
				Out_Shader4_g114951 = Data4_g114951.Shader;
				Out_Emissive4_g114951= Data4_g114951.Emissive;
				Out_MultiMask4_g114951 = Data4_g114951.MultiMask;
				Out_Grayscale4_g114951 = Data4_g114951.Grayscale;
				Out_Luminosity4_g114951= Data4_g114951.Luminosity;
				Out_AlphaClip4_g114951 = Data4_g114951.AlphaClip;
				Out_AlphaFade4_g114951 = Data4_g114951.AlphaFade;
				Out_Translucency4_g114951 = Data4_g114951.Translucency;
				Out_Transmission4_g114951 = Data4_g114951.Transmission;
				Out_Thickness4_g114951 = Data4_g114951.Thickness;
				Out_Diffusion4_g114951 = Data4_g114951.Diffusion;
				}
				half3 Visual_Albedo127_g114950 = Out_Albedo4_g114951;
				TVEModelData Data15_g114953 = Data16_g76840;
				float Out_Dummy15_g114953 = 0;
				float3 Out_PositionOS15_g114953 = float3( 0,0,0 );
				float3 Out_PositionWS15_g114953 = float3( 0,0,0 );
				float3 Out_PositionWO15_g114953 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g114953 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g114953 = float3( 0,0,0 );
				float3 Out_PivotOS15_g114953 = float3( 0,0,0 );
				float3 Out_PivotWS15_g114953 = float3( 0,0,0 );
				float3 Out_PivotWO15_g114953 = float3( 0,0,0 );
				float3 Out_NormalOS15_g114953 = float3( 0,0,0 );
				float3 Out_NormalWS15_g114953 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g114953 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g114953 = float3( 0,0,0 );
				float4 Out_TangentOS15_g114953 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g114953 = float3( 0,0,0 );
				float4 Out_VertexData15_g114953 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g114953 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g114953 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g114953 = float4( 0,0,0,0 );
				float4 Out_FragmentData15_g114953 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g114953 = Data15_g114953.Dummy;
				Out_PositionOS15_g114953 = Data15_g114953.PositionOS;
				Out_PositionWS15_g114953 = Data15_g114953.PositionWS;
				Out_PositionWO15_g114953 = Data15_g114953.PositionWO;
				Out_PositionRawOS15_g114953 = Data15_g114953.PositionRawOS;
				Out_PositionAddOS15_g114953 = Data15_g114953.PositionAddOS;
				Out_PivotOS15_g114953 = Data15_g114953.PivotOS;
				Out_PivotWS15_g114953 = Data15_g114953.PivotWS;
				Out_PivotWO15_g114953 = Data15_g114953.PivotWO;
				Out_NormalOS15_g114953 = Data15_g114953.NormalOS;
				Out_NormalWS15_g114953 = Data15_g114953.NormalWS;
				Out_NormalRawOS15_g114953 = Data15_g114953.NormalRawOS;
				Out_NormalRawWS15_g114953 = Data15_g114953.NormalRawWS;
				Out_TangentOS15_g114953 = Data15_g114953.TangentOS;
				Out_ViewDirWS15_g114953 = Data15_g114953.ViewDirWS;
				Out_VertexData15_g114953 = Data15_g114953.VertexData;
				Out_MotionData15_g114953 = Data15_g114953.MotionData;
				Out_BoundsData15_g114953 = Data15_g114953.BoundsData;
				Out_RotationData15_g114953 = Data15_g114953.RotationData;
				Out_FragmentData15_g114953 = Data15_g114953.FragmentData;
				}
				half4 Model_VertexData206_g114950 = Out_VertexData15_g114953;
				float4 break208_g114950 = Model_VertexData206_g114950;
				float4 break33_g114958 = _occlusion_vert_mode;
				float temp_output_30_0_g114958 = ( break208_g114950.x * break33_g114958.x );
				float temp_output_29_0_g114958 = ( break208_g114950.y * break33_g114958.y );
				float temp_output_31_0_g114958 = ( break208_g114950.z * break33_g114958.z );
				float temp_output_28_0_g114958 = ( temp_output_30_0_g114958 + temp_output_29_0_g114958 + temp_output_31_0_g114958 + ( break208_g114950.w * break33_g114958.w ) );
				float temp_output_194_0_g114950 = temp_output_28_0_g114958;
				float clampResult17_g114956 = clamp( temp_output_194_0_g114950 , 0.0001 , 0.9999 );
				float temp_output_7_0_g114955 = _OcclusionMeshRemap.x;
				float temp_output_10_0_g114955 = ( _OcclusionMeshRemap.y - temp_output_7_0_g114955 );
				float temp_output_6_0_g114957 = saturate( ( ( clampResult17_g114956 - temp_output_7_0_g114955 ) / ( temp_output_10_0_g114955 + 0.0001 ) ) );
				#ifdef TVE_REGISTER
				float staticSwitch14_g114957 = ( temp_output_6_0_g114957 + ( _OcclusionMeshMode * 0.0 ) );
				#else
				float staticSwitch14_g114957 = temp_output_6_0_g114957;
				#endif
				half Occlusion_Mask82_g114950 = staticSwitch14_g114957;
				float3 lerpResult75_g114950 = lerp( (_OcclusionColorTwo).rgb , (_OcclusionColorOne).rgb , Occlusion_Mask82_g114950);
				float3 lerpResult186_g114950 = lerp( Visual_Albedo127_g114950 , ( Visual_Albedo127_g114950 * lerpResult75_g114950 ) , _OcclusionIntensityValue);
				#ifdef TVE_OCCLUSION
				float3 staticSwitch171_g114950 = lerpResult186_g114950;
				#else
				float3 staticSwitch171_g114950 = Visual_Albedo127_g114950;
				#endif
				half3 Final_Albedo160_g114950 = staticSwitch171_g114950;
				float3 In_Albedo3_g114952 = Final_Albedo160_g114950;
				float2 In_NormalTS3_g114952 = Out_NormalTS4_g114951;
				float3 In_NormalWS3_g114952 = Out_NormalWS4_g114951;
				float4 In_Shader3_g114952 = Out_Shader4_g114951;
				float4 In_Emissive3_g114952 = Out_Emissive4_g114951;
				float3 temp_output_3_0_g114954 = Final_Albedo160_g114950;
				float dotResult20_g114954 = dot( temp_output_3_0_g114954 , float3(0.2126,0.7152,0.0722) );
				half Final_Grayscale164_g114950 = dotResult20_g114954;
				float In_Grayscale3_g114952 = Final_Grayscale164_g114950;
				float clampResult180_g114950 = clamp( saturate( ( Final_Grayscale164_g114950 * 5.0 ) ) , 0.2 , 1.0 );
				half Final_Shading181_g114950 = clampResult180_g114950;
				float In_Luminosity3_g114952 = Final_Shading181_g114950;
				float In_MultiMask3_g114952 = Out_MultiMask4_g114951;
				float In_AlphaClip3_g114952 = Out_AlphaClip4_g114951;
				float In_AlphaFade3_g114952 = Out_AlphaFade4_g114951;
				float3 In_Translucency3_g114952 = Out_Translucency4_g114951;
				float In_Transmission3_g114952 = Out_Transmission4_g114951;
				float In_Thickness3_g114952 = Out_Thickness4_g114951;
				float In_Diffusion3_g114952 = Out_Diffusion4_g114951;
				{
				Data3_g114952.Dummy = In_Dummy3_g114952;
				Data3_g114952.Albedo = In_Albedo3_g114952;
				Data3_g114952.NormalTS = In_NormalTS3_g114952;
				Data3_g114952.NormalWS = In_NormalWS3_g114952;
				Data3_g114952.Shader = In_Shader3_g114952;
				Data3_g114952.Emissive= In_Emissive3_g114952;
				Data3_g114952.MultiMask = In_MultiMask3_g114952;
				Data3_g114952.Grayscale = In_Grayscale3_g114952;
				Data3_g114952.Luminosity = In_Luminosity3_g114952;
				Data3_g114952.AlphaClip = In_AlphaClip3_g114952;
				Data3_g114952.AlphaFade = In_AlphaFade3_g114952;
				Data3_g114952.Translucency = In_Translucency3_g114952;
				Data3_g114952.Transmission = In_Transmission3_g114952;
				Data3_g114952.Thickness = In_Thickness3_g114952;
				Data3_g114952.Diffusion = In_Diffusion3_g114952;
				}
				TVEVisualData DataB25_g114960 = Data3_g114952;
				float Alpha25_g114960 = _OcclusionBakeMode;
				{
				if (Alpha25_g114960 < 0.5 )
				{
				Data25_g114960 = DataA25_g114960;
				}
				else
				{
				Data25_g114960 = DataB25_g114960;
				}
				}
				TVEVisualData DataA25_g114971 = Data25_g114960;
				float localCompData3_g114965 = ( 0.0 );
				TVEVisualData Data3_g114965 = (TVEVisualData)0;
				half Dummy220_g114961 = ( _GradientCategory + _GradientEnd + _GradientBakeMode );
				float In_Dummy3_g114965 = Dummy220_g114961;
				float localBreakData4_g114964 = ( 0.0 );
				TVEVisualData Data4_g114964 = Data25_g114960;
				float Out_Dummy4_g114964 = 0;
				float3 Out_Albedo4_g114964 = float3( 0,0,0 );
				float2 Out_NormalTS4_g114964 = float2( 0,0 );
				float3 Out_NormalWS4_g114964 = float3( 0,0,0 );
				float4 Out_Shader4_g114964 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g114964 = float4( 0,0,0,0 );
				float Out_MultiMask4_g114964 = 0;
				float Out_Grayscale4_g114964 = 0;
				float Out_Luminosity4_g114964 = 0;
				float Out_AlphaClip4_g114964 = 0;
				float Out_AlphaFade4_g114964 = 0;
				float3 Out_Translucency4_g114964 = float3( 0,0,0 );
				float Out_Transmission4_g114964 = 0;
				float Out_Thickness4_g114964 = 0;
				float Out_Diffusion4_g114964 = 0;
				{
				Out_Dummy4_g114964 = Data4_g114964.Dummy;
				Out_Albedo4_g114964 = Data4_g114964.Albedo;
				Out_NormalTS4_g114964 = Data4_g114964.NormalTS;
				Out_NormalWS4_g114964 = Data4_g114964.NormalWS;
				Out_Shader4_g114964 = Data4_g114964.Shader;
				Out_Emissive4_g114964= Data4_g114964.Emissive;
				Out_MultiMask4_g114964 = Data4_g114964.MultiMask;
				Out_Grayscale4_g114964 = Data4_g114964.Grayscale;
				Out_Luminosity4_g114964= Data4_g114964.Luminosity;
				Out_AlphaClip4_g114964 = Data4_g114964.AlphaClip;
				Out_AlphaFade4_g114964 = Data4_g114964.AlphaFade;
				Out_Translucency4_g114964 = Data4_g114964.Translucency;
				Out_Transmission4_g114964 = Data4_g114964.Transmission;
				Out_Thickness4_g114964 = Data4_g114964.Thickness;
				Out_Diffusion4_g114964 = Data4_g114964.Diffusion;
				}
				half3 Visual_Albedo127_g114961 = Out_Albedo4_g114964;
				float temp_output_162_11_g114961 = Out_MultiMask4_g114964;
				half Visual_MultiMask196_g114961 = temp_output_162_11_g114961;
				float lerpResult190_g114961 = lerp( 1.0 , Visual_MultiMask196_g114961 , _GradientMultiValue);
				half Gradient_MultiMask194_g114961 = lerpResult190_g114961;
				TVEModelData Data15_g114962 = Data16_g76840;
				float Out_Dummy15_g114962 = 0;
				float3 Out_PositionOS15_g114962 = float3( 0,0,0 );
				float3 Out_PositionWS15_g114962 = float3( 0,0,0 );
				float3 Out_PositionWO15_g114962 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g114962 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g114962 = float3( 0,0,0 );
				float3 Out_PivotOS15_g114962 = float3( 0,0,0 );
				float3 Out_PivotWS15_g114962 = float3( 0,0,0 );
				float3 Out_PivotWO15_g114962 = float3( 0,0,0 );
				float3 Out_NormalOS15_g114962 = float3( 0,0,0 );
				float3 Out_NormalWS15_g114962 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g114962 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g114962 = float3( 0,0,0 );
				float4 Out_TangentOS15_g114962 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g114962 = float3( 0,0,0 );
				float4 Out_VertexData15_g114962 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g114962 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g114962 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g114962 = float4( 0,0,0,0 );
				float4 Out_FragmentData15_g114962 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g114962 = Data15_g114962.Dummy;
				Out_PositionOS15_g114962 = Data15_g114962.PositionOS;
				Out_PositionWS15_g114962 = Data15_g114962.PositionWS;
				Out_PositionWO15_g114962 = Data15_g114962.PositionWO;
				Out_PositionRawOS15_g114962 = Data15_g114962.PositionRawOS;
				Out_PositionAddOS15_g114962 = Data15_g114962.PositionAddOS;
				Out_PivotOS15_g114962 = Data15_g114962.PivotOS;
				Out_PivotWS15_g114962 = Data15_g114962.PivotWS;
				Out_PivotWO15_g114962 = Data15_g114962.PivotWO;
				Out_NormalOS15_g114962 = Data15_g114962.NormalOS;
				Out_NormalWS15_g114962 = Data15_g114962.NormalWS;
				Out_NormalRawOS15_g114962 = Data15_g114962.NormalRawOS;
				Out_NormalRawWS15_g114962 = Data15_g114962.NormalRawWS;
				Out_TangentOS15_g114962 = Data15_g114962.TangentOS;
				Out_ViewDirWS15_g114962 = Data15_g114962.ViewDirWS;
				Out_VertexData15_g114962 = Data15_g114962.VertexData;
				Out_MotionData15_g114962 = Data15_g114962.MotionData;
				Out_BoundsData15_g114962 = Data15_g114962.BoundsData;
				Out_RotationData15_g114962 = Data15_g114962.RotationData;
				Out_FragmentData15_g114962 = Data15_g114962.FragmentData;
				}
				half4 Model_VertexData224_g114961 = Out_VertexData15_g114962;
				float4 break226_g114961 = Model_VertexData224_g114961;
				float4 break33_g114963 = _gradient_vert_mode;
				float temp_output_30_0_g114963 = ( break226_g114961.x * break33_g114963.x );
				float temp_output_29_0_g114963 = ( break226_g114961.y * break33_g114963.y );
				float temp_output_31_0_g114963 = ( break226_g114961.z * break33_g114963.z );
				float temp_output_28_0_g114963 = ( temp_output_30_0_g114963 + temp_output_29_0_g114963 + temp_output_31_0_g114963 + ( break226_g114961.w * break33_g114963.w ) );
				float temp_output_211_0_g114961 = temp_output_28_0_g114963;
				float clampResult17_g114968 = clamp( temp_output_211_0_g114961 , 0.0001 , 0.9999 );
				float temp_output_7_0_g114969 = _GradientMeshRemap.x;
				float temp_output_10_0_g114969 = ( _GradientMeshRemap.y - temp_output_7_0_g114969 );
				float temp_output_6_0_g114970 = saturate( ( ( clampResult17_g114968 - temp_output_7_0_g114969 ) / ( temp_output_10_0_g114969 + 0.0001 ) ) );
				#ifdef TVE_REGISTER
				float staticSwitch14_g114970 = ( temp_output_6_0_g114970 + ( _GradientMeshMode * 0.0 ) );
				#else
				float staticSwitch14_g114970 = temp_output_6_0_g114970;
				#endif
				half Gradient_VertMask82_g114961 = staticSwitch14_g114970;
				half Gradient_Mask200_g114961 = ( Gradient_MultiMask194_g114961 * Gradient_VertMask82_g114961 );
				float3 lerpResult75_g114961 = lerp( (_GradientColorTwo).rgb , (_GradientColorOne).rgb , Gradient_Mask200_g114961);
				float3 lerpResult186_g114961 = lerp( Visual_Albedo127_g114961 , ( Visual_Albedo127_g114961 * lerpResult75_g114961 ) , _GradientIntensityValue);
				#ifdef TVE_GRADIENT
				float3 staticSwitch171_g114961 = lerpResult186_g114961;
				#else
				float3 staticSwitch171_g114961 = Visual_Albedo127_g114961;
				#endif
				half3 Final_Albedo160_g114961 = staticSwitch171_g114961;
				float3 In_Albedo3_g114965 = Final_Albedo160_g114961;
				float2 In_NormalTS3_g114965 = Out_NormalTS4_g114964;
				float3 In_NormalWS3_g114965 = Out_NormalWS4_g114964;
				float4 In_Shader3_g114965 = Out_Shader4_g114964;
				float4 In_Emissive3_g114965 = Out_Emissive4_g114964;
				float3 temp_output_3_0_g114966 = Final_Albedo160_g114961;
				float dotResult20_g114966 = dot( temp_output_3_0_g114966 , float3(0.2126,0.7152,0.0722) );
				half Final_Grayscale164_g114961 = dotResult20_g114966;
				float In_Grayscale3_g114965 = Final_Grayscale164_g114961;
				float clampResult180_g114961 = clamp( saturate( ( Final_Grayscale164_g114961 * 5.0 ) ) , 0.2 , 1.0 );
				half Final_Luminosity181_g114961 = clampResult180_g114961;
				float In_Luminosity3_g114965 = Final_Luminosity181_g114961;
				float In_MultiMask3_g114965 = temp_output_162_11_g114961;
				float In_AlphaClip3_g114965 = Out_AlphaClip4_g114964;
				float In_AlphaFade3_g114965 = Out_AlphaFade4_g114964;
				float3 In_Translucency3_g114965 = Out_Translucency4_g114964;
				float In_Transmission3_g114965 = Out_Transmission4_g114964;
				float In_Thickness3_g114965 = Out_Thickness4_g114964;
				float In_Diffusion3_g114965 = Out_Diffusion4_g114964;
				{
				Data3_g114965.Dummy = In_Dummy3_g114965;
				Data3_g114965.Albedo = In_Albedo3_g114965;
				Data3_g114965.NormalTS = In_NormalTS3_g114965;
				Data3_g114965.NormalWS = In_NormalWS3_g114965;
				Data3_g114965.Shader = In_Shader3_g114965;
				Data3_g114965.Emissive= In_Emissive3_g114965;
				Data3_g114965.MultiMask = In_MultiMask3_g114965;
				Data3_g114965.Grayscale = In_Grayscale3_g114965;
				Data3_g114965.Luminosity = In_Luminosity3_g114965;
				Data3_g114965.AlphaClip = In_AlphaClip3_g114965;
				Data3_g114965.AlphaFade = In_AlphaFade3_g114965;
				Data3_g114965.Translucency = In_Translucency3_g114965;
				Data3_g114965.Transmission = In_Transmission3_g114965;
				Data3_g114965.Thickness = In_Thickness3_g114965;
				Data3_g114965.Diffusion = In_Diffusion3_g114965;
				}
				TVEVisualData DataB25_g114971 = Data3_g114965;
				float Alpha25_g114971 = _GradientBakeMode;
				{
				if (Alpha25_g114971 < 0.5 )
				{
				Data25_g114971 = DataA25_g114971;
				}
				else
				{
				Data25_g114971 = DataB25_g114971;
				}
				}
				TVEVisualData DataA25_g138617 = Data25_g114971;
				float localCompData3_g138590 = ( 0.0 );
				TVEVisualData Data3_g138590 = (TVEVisualData)0;
				half Dummy594_g138587 = ( _OverlayCategory + _OverlayEnd + _OverlaySpace + _OverlayElementMode + _OverlayBakeMode );
				float In_Dummy3_g138590 = Dummy594_g138587;
				float localBreakData4_g138588 = ( 0.0 );
				TVEVisualData Data4_g138588 = Data25_g114971;
				float Out_Dummy4_g138588 = 0;
				float3 Out_Albedo4_g138588 = float3( 0,0,0 );
				float2 Out_NormalTS4_g138588 = float2( 0,0 );
				float3 Out_NormalWS4_g138588 = float3( 0,0,0 );
				float4 Out_Shader4_g138588 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g138588 = float4( 0,0,0,0 );
				float Out_MultiMask4_g138588 = 0;
				float Out_Grayscale4_g138588 = 0;
				float Out_Luminosity4_g138588 = 0;
				float Out_AlphaClip4_g138588 = 0;
				float Out_AlphaFade4_g138588 = 0;
				float3 Out_Translucency4_g138588 = float3( 0,0,0 );
				float Out_Transmission4_g138588 = 0;
				float Out_Thickness4_g138588 = 0;
				float Out_Diffusion4_g138588 = 0;
				{
				Out_Dummy4_g138588 = Data4_g138588.Dummy;
				Out_Albedo4_g138588 = Data4_g138588.Albedo;
				Out_NormalTS4_g138588 = Data4_g138588.NormalTS;
				Out_NormalWS4_g138588 = Data4_g138588.NormalWS;
				Out_Shader4_g138588 = Data4_g138588.Shader;
				Out_Emissive4_g138588= Data4_g138588.Emissive;
				Out_MultiMask4_g138588 = Data4_g138588.MultiMask;
				Out_Grayscale4_g138588 = Data4_g138588.Grayscale;
				Out_Luminosity4_g138588= Data4_g138588.Luminosity;
				Out_AlphaClip4_g138588 = Data4_g138588.AlphaClip;
				Out_AlphaFade4_g138588 = Data4_g138588.AlphaFade;
				Out_Translucency4_g138588 = Data4_g138588.Translucency;
				Out_Transmission4_g138588 = Data4_g138588.Transmission;
				Out_Thickness4_g138588 = Data4_g138588.Thickness;
				Out_Diffusion4_g138588 = Data4_g138588.Diffusion;
				}
				half3 Visual_Albedo127_g138587 = Out_Albedo4_g138588;
				float3 temp_output_622_0_g138587 = (_OverlayColor).rgb;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g138591) = _OverlayAlbedoTex;
				SamplerState Sampler238_g138591 = sampler_Linear_Repeat;
				float4 temp_output_6_0_g138592 = _overlay_coord_value;
				#ifdef TVE_REGISTER
				float4 staticSwitch14_g138592 = ( temp_output_6_0_g138592 + ( ( _OverlaySampleMode + _OverlayCoordMode + _OverlayCoordValue ) * float4( 0,0,0,0 ) ) );
				#else
				float4 staticSwitch14_g138592 = temp_output_6_0_g138592;
				#endif
				half4 Overlay_Coords639_g138587 = staticSwitch14_g138592;
				float4 temp_output_37_0_g138591 = Overlay_Coords639_g138587;
				half4 Coords238_g138591 = temp_output_37_0_g138591;
				TVEModelData Data15_g138593 = Data16_g76840;
				float Out_Dummy15_g138593 = 0;
				float3 Out_PositionOS15_g138593 = float3( 0,0,0 );
				float3 Out_PositionWS15_g138593 = float3( 0,0,0 );
				float3 Out_PositionWO15_g138593 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g138593 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g138593 = float3( 0,0,0 );
				float3 Out_PivotOS15_g138593 = float3( 0,0,0 );
				float3 Out_PivotWS15_g138593 = float3( 0,0,0 );
				float3 Out_PivotWO15_g138593 = float3( 0,0,0 );
				float3 Out_NormalOS15_g138593 = float3( 0,0,0 );
				float3 Out_NormalWS15_g138593 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g138593 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g138593 = float3( 0,0,0 );
				float4 Out_TangentOS15_g138593 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g138593 = float3( 0,0,0 );
				float4 Out_VertexData15_g138593 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g138593 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g138593 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g138593 = float4( 0,0,0,0 );
				float4 Out_FragmentData15_g138593 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g138593 = Data15_g138593.Dummy;
				Out_PositionOS15_g138593 = Data15_g138593.PositionOS;
				Out_PositionWS15_g138593 = Data15_g138593.PositionWS;
				Out_PositionWO15_g138593 = Data15_g138593.PositionWO;
				Out_PositionRawOS15_g138593 = Data15_g138593.PositionRawOS;
				Out_PositionAddOS15_g138593 = Data15_g138593.PositionAddOS;
				Out_PivotOS15_g138593 = Data15_g138593.PivotOS;
				Out_PivotWS15_g138593 = Data15_g138593.PivotWS;
				Out_PivotWO15_g138593 = Data15_g138593.PivotWO;
				Out_NormalOS15_g138593 = Data15_g138593.NormalOS;
				Out_NormalWS15_g138593 = Data15_g138593.NormalWS;
				Out_NormalRawOS15_g138593 = Data15_g138593.NormalRawOS;
				Out_NormalRawWS15_g138593 = Data15_g138593.NormalRawWS;
				Out_TangentOS15_g138593 = Data15_g138593.TangentOS;
				Out_ViewDirWS15_g138593 = Data15_g138593.ViewDirWS;
				Out_VertexData15_g138593 = Data15_g138593.VertexData;
				Out_MotionData15_g138593 = Data15_g138593.MotionData;
				Out_BoundsData15_g138593 = Data15_g138593.BoundsData;
				Out_RotationData15_g138593 = Data15_g138593.RotationData;
				Out_FragmentData15_g138593 = Data15_g138593.FragmentData;
				}
				half3 Model_PositionWO602_g138587 = Out_PositionWO15_g138593;
				float3 temp_output_279_0_g138591 = Model_PositionWO602_g138587;
				half3 WorldPosition238_g138591 = temp_output_279_0_g138591;
				half4 localSamplePlanar2D238_g138591 = SamplePlanar2D( Texture238_g138591 , Sampler238_g138591 , Coords238_g138591 , WorldPosition238_g138591 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g138591) = _OverlayAlbedoTex;
				SamplerState Sampler246_g138591 = sampler_Linear_Repeat;
				half4 Coords246_g138591 = temp_output_37_0_g138591;
				half3 WorldPosition246_g138591 = temp_output_279_0_g138591;
				half3 Model_NormalWS712_g138587 = Out_NormalWS15_g138593;
				float3 temp_output_280_0_g138591 = Model_NormalWS712_g138587;
				half3 WorldNormal246_g138591 = temp_output_280_0_g138591;
				half4 localSamplePlanar3D246_g138591 = SamplePlanar3D( Texture246_g138591 , Sampler246_g138591 , Coords246_g138591 , WorldPosition246_g138591 , WorldNormal246_g138591 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g138591) = _OverlayAlbedoTex;
				SamplerState Sampler234_g138591 = sampler_Linear_Repeat;
				float4 Coords234_g138591 = temp_output_37_0_g138591;
				float3 WorldPosition234_g138591 = temp_output_279_0_g138591;
				float4 localSampleStochastic2D234_g138591 = SampleStochastic2D( Texture234_g138591 , Sampler234_g138591 , Coords234_g138591 , WorldPosition234_g138591 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g138591) = _OverlayAlbedoTex;
				SamplerState Sampler263_g138591 = sampler_Linear_Repeat;
				half4 Coords263_g138591 = temp_output_37_0_g138591;
				half3 WorldPosition263_g138591 = temp_output_279_0_g138591;
				half3 WorldNormal263_g138591 = temp_output_280_0_g138591;
				half4 localSampleStochastic3D263_g138591 = SampleStochastic3D( Texture263_g138591 , Sampler263_g138591 , Coords263_g138591 , WorldPosition263_g138591 , WorldNormal263_g138591 );
				#if defined( TVE_OVERLAY_SAMPLE_PLANAR_2D )
				float4 staticSwitch676_g138587 = localSamplePlanar2D238_g138591;
				#elif defined( TVE_OVERLAY_SAMPLE_PLANAR_3D )
				float4 staticSwitch676_g138587 = localSamplePlanar3D246_g138591;
				#elif defined( TVE_OVERLAY_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch676_g138587 = localSampleStochastic2D234_g138591;
				#elif defined( TVE_OVERLAY_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch676_g138587 = localSampleStochastic3D263_g138591;
				#else
				float4 staticSwitch676_g138587 = localSamplePlanar2D238_g138591;
				#endif
				half3 Overlay_Albedo526_g138587 = (staticSwitch676_g138587).xyz;
				#ifdef TVE_OVERLAY_TEX
				float3 staticSwitch578_g138587 = ( temp_output_622_0_g138587 * Overlay_Albedo526_g138587 );
				#else
				float3 staticSwitch578_g138587 = temp_output_622_0_g138587;
				#endif
				float3 temp_output_6_0_g138599 = staticSwitch578_g138587;
				#ifdef TVE_REGISTER
				float3 staticSwitch14_g138599 = ( temp_output_6_0_g138599 + ( _OverlayTextureMode * 0.0 ) );
				#else
				float3 staticSwitch14_g138599 = temp_output_6_0_g138599;
				#endif
				float3 temp_cast_5 = (0.0).xxx;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g138596) = _OverlayGlitterTex;
				SamplerState Sampler246_g138596 = sampler_Linear_Repeat;
				float4 appendResult863_g138587 = (float4(_OverlayGlitterTillingValue , _OverlayGlitterTillingValue , 0.0 , 0.0));
				float4 temp_output_37_0_g138596 = appendResult863_g138587;
				half4 Coords246_g138596 = temp_output_37_0_g138596;
				float3 temp_output_279_0_g138596 = Model_PositionWO602_g138587;
				half3 WorldPosition246_g138596 = temp_output_279_0_g138596;
				float3 temp_output_280_0_g138596 = Model_NormalWS712_g138587;
				half3 WorldNormal246_g138596 = temp_output_280_0_g138596;
				half4 localSamplePlanar3D246_g138596 = SamplePlanar3D( Texture246_g138596 , Sampler246_g138596 , Coords246_g138596 , WorldPosition246_g138596 , WorldNormal246_g138596 );
				half Overlay_GlitterTex854_g138587 = (localSamplePlanar3D246_g138596).x;
				half3 Model_PositionWS879_g138587 = Out_PositionWS15_g138593;
				#ifdef TVE_OVERLAY_GLITTER
				float3 staticSwitch868_g138587 = ( _OverlayGlitterIntensityValue * (_OverlayGlitterColor).rgb * Overlay_GlitterTex854_g138587 * ( 1.0 - saturate( ( distance( _WorldSpaceCameraPos , Model_PositionWS879_g138587 ) / _OverlayGlitterDistValue ) ) ) );
				#else
				float3 staticSwitch868_g138587 = temp_cast_5;
				#endif
				half3 Overlay_GlitterColor865_g138587 = staticSwitch868_g138587;
				half Overlay_TexMask908_g138587 = 1.0;
				float3 temp_output_739_21_g138587 = Out_NormalWS4_g138588;
				half3 Visual_NormalWS749_g138587 = temp_output_739_21_g138587;
				float clampResult17_g138609 = clamp( saturate( (Visual_NormalWS749_g138587).y ) , 0.0001 , 0.9999 );
				float temp_output_7_0_g138608 = _OverlayProjRemap.x;
				float temp_output_10_0_g138608 = ( _OverlayProjRemap.y - temp_output_7_0_g138608 );
				float lerpResult842_g138587 = lerp( 1.0 , saturate( ( ( clampResult17_g138609 - temp_output_7_0_g138608 ) / ( temp_output_10_0_g138608 + 0.0001 ) ) ) , _OverlayProjValue);
				#ifdef TVE_OVERLAY_PROJ
				float staticSwitch734_g138587 = lerpResult842_g138587;
				#else
				float staticSwitch734_g138587 = 1.0;
				#endif
				half Overlay_MaskProj457_g138587 = staticSwitch734_g138587;
				float temp_output_739_15_g138587 = Out_Luminosity4_g138588;
				half Visual_Luminosity654_g138587 = temp_output_739_15_g138587;
				float clampResult17_g138611 = clamp( Visual_Luminosity654_g138587 , 0.0001 , 0.9999 );
				float temp_output_7_0_g138610 = _OverlayLumaRemap.x;
				float temp_output_10_0_g138610 = ( _OverlayLumaRemap.y - temp_output_7_0_g138610 );
				float lerpResult587_g138587 = lerp( 1.0 , saturate( ( ( clampResult17_g138611 - temp_output_7_0_g138610 ) / ( temp_output_10_0_g138610 + 0.0001 ) ) ) , _OverlayLumaValue);
				half Overlay_MaskLuma438_g138587 = lerpResult587_g138587;
				half4 Model_VertexMasks791_g138587 = Out_VertexData15_g138593;
				float4 break792_g138587 = Model_VertexMasks791_g138587;
				float4 break33_g138601 = _overlay_vert_mode;
				float temp_output_30_0_g138601 = ( break792_g138587.x * break33_g138601.x );
				float temp_output_29_0_g138601 = ( break792_g138587.y * break33_g138601.y );
				float temp_output_31_0_g138601 = ( break792_g138587.z * break33_g138601.z );
				float temp_output_28_0_g138601 = ( temp_output_30_0_g138601 + temp_output_29_0_g138601 + temp_output_31_0_g138601 + ( break792_g138587.w * break33_g138601.w ) );
				float clampResult17_g138602 = clamp( temp_output_28_0_g138601 , 0.0001 , 0.9999 );
				float temp_output_7_0_g138604 = _OverlayMeshRemap.x;
				float temp_output_10_0_g138604 = ( _OverlayMeshRemap.y - temp_output_7_0_g138604 );
				float lerpResult881_g138587 = lerp( 1.0 , saturate( ( ( clampResult17_g138602 - temp_output_7_0_g138604 ) / ( temp_output_10_0_g138604 + 0.0001 ) ) ) , _OverlayMeshValue);
				float temp_output_6_0_g138612 = lerpResult881_g138587;
				#ifdef TVE_REGISTER
				float staticSwitch14_g138612 = ( temp_output_6_0_g138612 + ( _OverlayMeshMode * 0.0 ) );
				#else
				float staticSwitch14_g138612 = temp_output_6_0_g138612;
				#endif
				#ifdef TVE_OVERLAY_VERT
				float staticSwitch800_g138587 = staticSwitch14_g138612;
				#else
				float staticSwitch800_g138587 = 1.0;
				#endif
				half Overlay_VertMask801_g138587 = staticSwitch800_g138587;
				half Overlay_MaskNoise427_g138587 = 1.0;
				TVEGlobalData Data15_g138589 = Data321;
				float Out_Dummy15_g138589 = 0;
				float4 Out_CoatParams15_g138589 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g138589 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g138589 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g138589 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g138589 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g138589 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g138589 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g138589 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g138589 = Data15_g138589.Dummy;
				Out_CoatParams15_g138589 = Data15_g138589.CoatParams;
				Out_PaintParams15_g138589 = Data15_g138589.PaintParams;
				Out_GlowParams15_g138589 = Data15_g138589.GlowParams;
				Out_AtmoParams15_g138589= Data15_g138589.AtmoParams;
				Out_FormParams15_g138589 = Data15_g138589.FormParams;
				Out_LandParams15_g138589 = Data15_g138589.LandParams;
				Out_WindParams15_g138589 = Data15_g138589.WindParams;
				Out_PushParams15_g138589 = Data15_g138589.PushParams;
				}
				half4 Global_AtmoParams516_g138587 = Out_AtmoParams15_g138589;
				#ifdef TVE_OVERLAY_ELEMENT
				float staticSwitch705_g138587 = ( (Global_AtmoParams516_g138587).z * TVE_IsEnabled );
				#else
				float staticSwitch705_g138587 = 1.0;
				#endif
				half Overlay_MaskGlobal429_g138587 = staticSwitch705_g138587;
				half Custom_Mask646_g138587 = 1.0;
				float temp_output_7_0_g138607 = 0.1;
				float temp_output_10_0_g138607 = ( 0.2 - temp_output_7_0_g138607 );
				half Overlay_Mask494_g138587 = saturate( ( ( ( _OverlayIntensityValue * Overlay_TexMask908_g138587 * Overlay_MaskProj457_g138587 * Overlay_MaskLuma438_g138587 * Overlay_VertMask801_g138587 * Overlay_MaskNoise427_g138587 * Overlay_MaskGlobal429_g138587 * Custom_Mask646_g138587 ) - temp_output_7_0_g138607 ) / ( temp_output_10_0_g138607 + 0.0001 ) ) );
				float3 lerpResult467_g138587 = lerp( Visual_Albedo127_g138587 , ( staticSwitch14_g138599 + Overlay_GlitterColor865_g138587 ) , Overlay_Mask494_g138587);
				#ifdef TVE_OVERLAY
				float3 staticSwitch577_g138587 = lerpResult467_g138587;
				#else
				float3 staticSwitch577_g138587 = Visual_Albedo127_g138587;
				#endif
				half3 Final_Albedo493_g138587 = staticSwitch577_g138587;
				float3 In_Albedo3_g138590 = Final_Albedo493_g138587;
				half2 Visual_NormalTS535_g138587 = Out_NormalTS4_g138588;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture238_g138594) = _OverlayNormalTex;
				SamplerState Sampler238_g138594 = sampler_Linear_Repeat;
				float4 temp_output_37_0_g138594 = Overlay_Coords639_g138587;
				half4 Coords238_g138594 = temp_output_37_0_g138594;
				float3 temp_output_279_0_g138594 = Model_PositionWO602_g138587;
				half3 WorldPosition238_g138594 = temp_output_279_0_g138594;
				half4 localSamplePlanar2D238_g138594 = SamplePlanar2D( Texture238_g138594 , Sampler238_g138594 , Coords238_g138594 , WorldPosition238_g138594 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture246_g138594) = _OverlayNormalTex;
				SamplerState Sampler246_g138594 = sampler_Linear_Repeat;
				half4 Coords246_g138594 = temp_output_37_0_g138594;
				half3 WorldPosition246_g138594 = temp_output_279_0_g138594;
				float3 temp_output_280_0_g138594 = Model_NormalWS712_g138587;
				half3 WorldNormal246_g138594 = temp_output_280_0_g138594;
				half4 localSamplePlanar3D246_g138594 = SamplePlanar3D( Texture246_g138594 , Sampler246_g138594 , Coords246_g138594 , WorldPosition246_g138594 , WorldNormal246_g138594 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture234_g138594) = _OverlayNormalTex;
				SamplerState Sampler234_g138594 = sampler_Linear_Repeat;
				float4 Coords234_g138594 = temp_output_37_0_g138594;
				float3 WorldPosition234_g138594 = temp_output_279_0_g138594;
				float4 localSampleStochastic2D234_g138594 = SampleStochastic2D( Texture234_g138594 , Sampler234_g138594 , Coords234_g138594 , WorldPosition234_g138594 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture263_g138594) = _OverlayNormalTex;
				SamplerState Sampler263_g138594 = sampler_Linear_Repeat;
				half4 Coords263_g138594 = temp_output_37_0_g138594;
				half3 WorldPosition263_g138594 = temp_output_279_0_g138594;
				half3 WorldNormal263_g138594 = temp_output_280_0_g138594;
				half4 localSampleStochastic3D263_g138594 = SampleStochastic3D( Texture263_g138594 , Sampler263_g138594 , Coords263_g138594 , WorldPosition263_g138594 , WorldNormal263_g138594 );
				#if defined( TVE_OVERLAY_SAMPLE_PLANAR_2D )
				float4 staticSwitch686_g138587 = localSamplePlanar2D238_g138594;
				#elif defined( TVE_OVERLAY_SAMPLE_PLANAR_3D )
				float4 staticSwitch686_g138587 = localSamplePlanar3D246_g138594;
				#elif defined( TVE_OVERLAY_SAMPLE_STOCHASTIC_2D )
				float4 staticSwitch686_g138587 = localSampleStochastic2D234_g138594;
				#elif defined( TVE_OVERLAY_SAMPLE_STOCHASTIC_3D )
				float4 staticSwitch686_g138587 = localSampleStochastic3D263_g138594;
				#else
				float4 staticSwitch686_g138587 = localSamplePlanar2D238_g138594;
				#endif
				half4 Normal_Packed45_g138598 = staticSwitch686_g138587;
				float2 appendResult58_g138598 = (float2(( (Normal_Packed45_g138598).x * (Normal_Packed45_g138598).w ) , (Normal_Packed45_g138598).y));
				half2 Normal_Default50_g138598 = appendResult58_g138598;
				half2 Normal_ASTC41_g138598 = (Normal_Packed45_g138598).xy;
				#ifdef UNITY_ASTC_NORMALMAP_ENCODING
				float2 staticSwitch38_g138598 = Normal_ASTC41_g138598;
				#else
				float2 staticSwitch38_g138598 = Normal_Default50_g138598;
				#endif
				half2 Normal_NO_DTX544_g138598 = (Normal_Packed45_g138598).wy;
				#ifdef UNITY_NO_DXT5nm
				float2 staticSwitch37_g138598 = Normal_NO_DTX544_g138598;
				#else
				float2 staticSwitch37_g138598 = staticSwitch38_g138598;
				#endif
				half2 Normal_Planar45_g138597 = (staticSwitch37_g138598*2.0 + -1.0);
				float2 break71_g138597 = Normal_Planar45_g138597;
				float3 appendResult72_g138597 = (float3(break71_g138597.x , 0.0 , break71_g138597.y));
				half2 Overlay_Normal528_g138587 = (mul( ase_worldToTangent, appendResult72_g138597 )).xy;
				#ifdef TVE_OVERLAY_TEX
				float2 staticSwitch579_g138587 = Overlay_Normal528_g138587;
				#else
				float2 staticSwitch579_g138587 = Visual_NormalTS535_g138587;
				#endif
				float2 lerpResult551_g138587 = lerp( Visual_NormalTS535_g138587 , ( staticSwitch579_g138587 * _OverlayNormalValue ) , Overlay_Mask494_g138587);
				#ifdef TVE_OVERLAY
				float2 staticSwitch583_g138587 = lerpResult551_g138587;
				#else
				float2 staticSwitch583_g138587 = Visual_NormalTS535_g138587;
				#endif
				half2 Final_NormalTS499_g138587 = staticSwitch583_g138587;
				float2 In_NormalTS3_g138590 = Final_NormalTS499_g138587;
				float3 In_NormalWS3_g138590 = temp_output_739_21_g138587;
				half4 Visual_Masks536_g138587 = Out_Shader4_g138588;
				float4 appendResult585_g138587 = (float4(0.0 , 1.0 , 0.0 , _OverlaySmoothnessValue));
				float4 lerpResult584_g138587 = lerp( Visual_Masks536_g138587 , appendResult585_g138587 , Overlay_Mask494_g138587);
				#ifdef TVE_OVERLAY
				float4 staticSwitch586_g138587 = lerpResult584_g138587;
				#else
				float4 staticSwitch586_g138587 = Visual_Masks536_g138587;
				#endif
				half4 Final_Masks482_g138587 = staticSwitch586_g138587;
				float4 In_Shader3_g138590 = Final_Masks482_g138587;
				float4 In_Emissive3_g138590 = Out_Emissive4_g138588;
				float temp_output_739_12_g138587 = Out_Grayscale4_g138588;
				float In_Grayscale3_g138590 = temp_output_739_12_g138587;
				float In_Luminosity3_g138590 = temp_output_739_15_g138587;
				float In_MultiMask3_g138590 = Out_MultiMask4_g138588;
				float In_AlphaClip3_g138590 = Out_AlphaClip4_g138588;
				float In_AlphaFade3_g138590 = Out_AlphaFade4_g138588;
				float3 In_Translucency3_g138590 = Out_Translucency4_g138588;
				half Visual_Transmission699_g138587 = Out_Transmission4_g138588;
				float lerpResult746_g138587 = lerp( Visual_Transmission699_g138587 , ( Visual_Transmission699_g138587 * _OverlaySubsurfaceValue ) , ( Overlay_VertMask801_g138587 * Overlay_MaskNoise427_g138587 * Overlay_MaskGlobal429_g138587 ));
				#ifdef TVE_OVERLAY
				float staticSwitch703_g138587 = lerpResult746_g138587;
				#else
				float staticSwitch703_g138587 = Visual_Transmission699_g138587;
				#endif
				half Final_Transmission702_g138587 = staticSwitch703_g138587;
				float In_Transmission3_g138590 = Final_Transmission702_g138587;
				float In_Thickness3_g138590 = Out_Thickness4_g138588;
				float In_Diffusion3_g138590 = Out_Diffusion4_g138588;
				{
				Data3_g138590.Dummy = In_Dummy3_g138590;
				Data3_g138590.Albedo = In_Albedo3_g138590;
				Data3_g138590.NormalTS = In_NormalTS3_g138590;
				Data3_g138590.NormalWS = In_NormalWS3_g138590;
				Data3_g138590.Shader = In_Shader3_g138590;
				Data3_g138590.Emissive= In_Emissive3_g138590;
				Data3_g138590.MultiMask = In_MultiMask3_g138590;
				Data3_g138590.Grayscale = In_Grayscale3_g138590;
				Data3_g138590.Luminosity = In_Luminosity3_g138590;
				Data3_g138590.AlphaClip = In_AlphaClip3_g138590;
				Data3_g138590.AlphaFade = In_AlphaFade3_g138590;
				Data3_g138590.Translucency = In_Translucency3_g138590;
				Data3_g138590.Transmission = In_Transmission3_g138590;
				Data3_g138590.Thickness = In_Thickness3_g138590;
				Data3_g138590.Diffusion = In_Diffusion3_g138590;
				}
				TVEVisualData DataB25_g138617 = Data3_g138590;
				float Alpha25_g138617 = _OverlayBakeMode;
				{
				if (Alpha25_g138617 < 0.5 )
				{
				Data25_g138617 = DataA25_g138617;
				}
				else
				{
				Data25_g138617 = DataB25_g138617;
				}
				}
				TVEVisualData Data4_g139247 = Data25_g138617;
				float Out_Dummy4_g139247 = 0;
				float3 Out_Albedo4_g139247 = float3( 0,0,0 );
				float2 Out_NormalTS4_g139247 = float2( 0,0 );
				float3 Out_NormalWS4_g139247 = float3( 0,0,0 );
				float4 Out_Shader4_g139247 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g139247 = float4( 0,0,0,0 );
				float Out_MultiMask4_g139247 = 0;
				float Out_Grayscale4_g139247 = 0;
				float Out_Luminosity4_g139247 = 0;
				float Out_AlphaClip4_g139247 = 0;
				float Out_AlphaFade4_g139247 = 0;
				float3 Out_Translucency4_g139247 = float3( 0,0,0 );
				float Out_Transmission4_g139247 = 0;
				float Out_Thickness4_g139247 = 0;
				float Out_Diffusion4_g139247 = 0;
				{
				Out_Dummy4_g139247 = Data4_g139247.Dummy;
				Out_Albedo4_g139247 = Data4_g139247.Albedo;
				Out_NormalTS4_g139247 = Data4_g139247.NormalTS;
				Out_NormalWS4_g139247 = Data4_g139247.NormalWS;
				Out_Shader4_g139247 = Data4_g139247.Shader;
				Out_Emissive4_g139247= Data4_g139247.Emissive;
				Out_MultiMask4_g139247 = Data4_g139247.MultiMask;
				Out_Grayscale4_g139247 = Data4_g139247.Grayscale;
				Out_Luminosity4_g139247= Data4_g139247.Luminosity;
				Out_AlphaClip4_g139247 = Data4_g139247.AlphaClip;
				Out_AlphaFade4_g139247 = Data4_g139247.AlphaFade;
				Out_Translucency4_g139247 = Data4_g139247.Translucency;
				Out_Transmission4_g139247 = Data4_g139247.Transmission;
				Out_Thickness4_g139247 = Data4_g139247.Thickness;
				Out_Diffusion4_g139247 = Data4_g139247.Diffusion;
				}
				float3 temp_output_297_0_g139236 = Out_Albedo4_g139247;
				float3 In_Albedo3_g139248 = temp_output_297_0_g139236;
				float2 In_NormalTS3_g139248 = Out_NormalTS4_g139247;
				float3 In_NormalWS3_g139248 = Out_NormalWS4_g139247;
				float4 In_Shader3_g139248 = Out_Shader4_g139247;
				float4 temp_cast_6 = (0.0).xxxx;
				half4 Visual_Emissive255_g139236 = Out_Emissive4_g139247;
				TVEModelData Data15_g139237 = Data16_g76840;
				float Out_Dummy15_g139237 = 0;
				float3 Out_PositionOS15_g139237 = float3( 0,0,0 );
				float3 Out_PositionWS15_g139237 = float3( 0,0,0 );
				float3 Out_PositionWO15_g139237 = float3( 0,0,0 );
				float3 Out_PositionRawOS15_g139237 = float3( 0,0,0 );
				float3 Out_PositionAddOS15_g139237 = float3( 0,0,0 );
				float3 Out_PivotOS15_g139237 = float3( 0,0,0 );
				float3 Out_PivotWS15_g139237 = float3( 0,0,0 );
				float3 Out_PivotWO15_g139237 = float3( 0,0,0 );
				float3 Out_NormalOS15_g139237 = float3( 0,0,0 );
				float3 Out_NormalWS15_g139237 = float3( 0,0,0 );
				float3 Out_NormalRawOS15_g139237 = float3( 0,0,0 );
				float3 Out_NormalRawWS15_g139237 = float3( 0,0,0 );
				float4 Out_TangentOS15_g139237 = float4( 0,0,0,0 );
				float3 Out_ViewDirWS15_g139237 = float3( 0,0,0 );
				float4 Out_VertexData15_g139237 = float4( 0,0,0,0 );
				float4 Out_MotionData15_g139237 = float4( 0,0,0,0 );
				float4 Out_BoundsData15_g139237 = float4( 0,0,0,0 );
				float4 Out_RotationData15_g139237 = float4( 0,0,0,0 );
				float4 Out_FragmentData15_g139237 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g139237 = Data15_g139237.Dummy;
				Out_PositionOS15_g139237 = Data15_g139237.PositionOS;
				Out_PositionWS15_g139237 = Data15_g139237.PositionWS;
				Out_PositionWO15_g139237 = Data15_g139237.PositionWO;
				Out_PositionRawOS15_g139237 = Data15_g139237.PositionRawOS;
				Out_PositionAddOS15_g139237 = Data15_g139237.PositionAddOS;
				Out_PivotOS15_g139237 = Data15_g139237.PivotOS;
				Out_PivotWS15_g139237 = Data15_g139237.PivotWS;
				Out_PivotWO15_g139237 = Data15_g139237.PivotWO;
				Out_NormalOS15_g139237 = Data15_g139237.NormalOS;
				Out_NormalWS15_g139237 = Data15_g139237.NormalWS;
				Out_NormalRawOS15_g139237 = Data15_g139237.NormalRawOS;
				Out_NormalRawWS15_g139237 = Data15_g139237.NormalRawWS;
				Out_TangentOS15_g139237 = Data15_g139237.TangentOS;
				Out_ViewDirWS15_g139237 = Data15_g139237.ViewDirWS;
				Out_VertexData15_g139237 = Data15_g139237.VertexData;
				Out_MotionData15_g139237 = Data15_g139237.MotionData;
				Out_BoundsData15_g139237 = Data15_g139237.BoundsData;
				Out_RotationData15_g139237 = Data15_g139237.RotationData;
				Out_FragmentData15_g139237 = Data15_g139237.FragmentData;
				}
				half4 Model_VertexMasks216_g139236 = Out_VertexData15_g139237;
				float4 break251_g139236 = Model_VertexMasks216_g139236;
				float4 break33_g139241 = _emissive_vert_mode;
				float temp_output_30_0_g139241 = ( break251_g139236.x * break33_g139241.x );
				float temp_output_29_0_g139241 = ( break251_g139236.y * break33_g139241.y );
				float temp_output_31_0_g139241 = ( break251_g139236.z * break33_g139241.z );
				float temp_output_28_0_g139241 = ( temp_output_30_0_g139241 + temp_output_29_0_g139241 + temp_output_31_0_g139241 + ( break251_g139236.w * break33_g139241.w ) );
				float clampResult17_g139240 = clamp( temp_output_28_0_g139241 , 0.0001 , 0.9999 );
				float temp_output_7_0_g139244 = _EmissiveMeshRemap.x;
				float temp_output_10_0_g139244 = ( _EmissiveMeshRemap.y - temp_output_7_0_g139244 );
				float lerpResult303_g139236 = lerp( 1.0 , saturate( ( ( clampResult17_g139240 - temp_output_7_0_g139244 ) / ( temp_output_10_0_g139244 + 0.0001 ) ) ) , _EmissiveMeshValue);
				float temp_output_6_0_g139250 = lerpResult303_g139236;
				#ifdef TVE_REGISTER
				float staticSwitch14_g139250 = ( temp_output_6_0_g139250 + ( _EmissiveMeshMode * 0.0 ) );
				#else
				float staticSwitch14_g139250 = temp_output_6_0_g139250;
				#endif
				#ifdef TVE_EMISSIVE_VERT
				float staticSwitch242_g139236 = staticSwitch14_g139250;
				#else
				float staticSwitch242_g139236 = 1.0;
				#endif
				half Emissive_MeshMask221_g139236 = staticSwitch242_g139236;
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture276_g139239) = _EmissiveMaskTex;
				SamplerState Sampler276_g139239 = sampler_Linear_Repeat;
				float4 temp_output_6_0_g139245 = _emissive_coord_value;
				#ifdef TVE_REGISTER
				float4 staticSwitch14_g139245 = ( temp_output_6_0_g139245 + ( ( _EmissiveSampleMode + _EmissiveCoordMode + _EmissiveCoordValue ) * float4( 0,0,0,0 ) ) );
				#else
				float4 staticSwitch14_g139245 = temp_output_6_0_g139245;
				#endif
				half4 Emissive_Coords167_g139236 = staticSwitch14_g139245;
				float4 temp_output_37_0_g139239 = Emissive_Coords167_g139236;
				half4 Coords276_g139239 = temp_output_37_0_g139239;
				half2 TexCoord276_g139239 = i.ase_texcoord.xy;
				half4 localSampleMain276_g139239 = SampleMain( Texture276_g139239 , Sampler276_g139239 , Coords276_g139239 , TexCoord276_g139239 );
				UNITY_DECLARE_TEX2D_NOSAMPLER(Texture275_g139239) = _EmissiveMaskTex;
				SamplerState Sampler275_g139239 = sampler_Linear_Repeat;
				half4 Coords275_g139239 = temp_output_37_0_g139239;
				float2 appendResult289_g139239 = (float2(i.ase_texcoord1.z , i.ase_texcoord1.w));
				#ifdef TVE_LEGACY
				float2 staticSwitch288_g139239 = appendResult289_g139239;
				#else
				float2 staticSwitch288_g139239 = i.ase_texcoord.zw;
				#endif
				half2 TexCoord275_g139239 = staticSwitch288_g139239;
				half4 localSampleExtra275_g139239 = SampleExtra( Texture275_g139239 , Sampler275_g139239 , Coords275_g139239 , TexCoord275_g139239 );
				#if defined( TVE_EMISSIVE_SAMPLE_MAIN_UV )
				float4 staticSwitch176_g139236 = localSampleMain276_g139239;
				#elif defined( TVE_EMISSIVE_SAMPLE_EXTRA_UV )
				float4 staticSwitch176_g139236 = localSampleExtra275_g139239;
				#else
				float4 staticSwitch176_g139236 = localSampleMain276_g139239;
				#endif
				half4 Emissive_MaskTex201_g139236 = staticSwitch176_g139236;
				float clampResult17_g139243 = clamp( (Emissive_MaskTex201_g139236).x , 0.0001 , 0.9999 );
				float temp_output_7_0_g139242 = _EmissiveMaskRemap.x;
				float temp_output_10_0_g139242 = ( _EmissiveMaskRemap.y - temp_output_7_0_g139242 );
				float lerpResult302_g139236 = lerp( 1.0 , saturate( ( ( clampResult17_g139243 - temp_output_7_0_g139242 ) / ( temp_output_10_0_g139242 + 0.0001 ) ) ) , _EmissiveMaskValue);
				#ifdef TVE_EMISSIVE_MASK
				float staticSwitch190_g139236 = lerpResult302_g139236;
				#else
				float staticSwitch190_g139236 = 1.0;
				#endif
				half Emissive_Mask103_g139236 = staticSwitch190_g139236;
				float temp_output_279_0_g139236 = ( Emissive_MeshMask221_g139236 * Emissive_Mask103_g139236 );
				float3 appendResult293_g139236 = (float3(temp_output_279_0_g139236 , temp_output_279_0_g139236 , temp_output_279_0_g139236));
				half3 Local_EmissiveColor278_g139236 = appendResult293_g139236;
				float3 temp_cast_7 = (1.0).xxx;
				TVEGlobalData Data15_g139238 = Data321;
				float Out_Dummy15_g139238 = 0;
				float4 Out_CoatParams15_g139238 = float4( 0,0,0,0 );
				float4 Out_PaintParams15_g139238 = float4( 0,0,0,0 );
				float4 Out_GlowParams15_g139238 = float4( 0,0,0,0 );
				float4 Out_AtmoParams15_g139238 = float4( 0,0,0,0 );
				float4 Out_FormParams15_g139238 = float4( 0,0,0,0 );
				float4 Out_LandParams15_g139238 = float4( 0,0,0,0 );
				float4 Out_WindParams15_g139238 = float4( 0,0,0,0 );
				float4 Out_PushParams15_g139238 = float4( 0,0,0,0 );
				{
				Out_Dummy15_g139238 = Data15_g139238.Dummy;
				Out_CoatParams15_g139238 = Data15_g139238.CoatParams;
				Out_PaintParams15_g139238 = Data15_g139238.PaintParams;
				Out_GlowParams15_g139238 = Data15_g139238.GlowParams;
				Out_AtmoParams15_g139238= Data15_g139238.AtmoParams;
				Out_FormParams15_g139238 = Data15_g139238.FormParams;
				Out_LandParams15_g139238 = Data15_g139238.LandParams;
				Out_WindParams15_g139238 = Data15_g139238.WindParams;
				Out_PushParams15_g139238 = Data15_g139238.PushParams;
				}
				half4 Global_GlowParams179_g139236 = Out_GlowParams15_g139238;
				float3 lerpResult299_g139236 = lerp( float3( 1,1,1 ) , (Global_GlowParams179_g139236).xyz , TVE_IsEnabled);
				#ifdef TVE_EMISSIVE_ELEMENT
				float3 staticSwitch228_g139236 = lerpResult299_g139236;
				#else
				float3 staticSwitch228_g139236 = temp_cast_7;
				#endif
				half3 Emissive_GlobalMask248_g139236 = staticSwitch228_g139236;
				half3 Local_EmissiveValue88_g139236 = ( _EmissiveIntensityValue * (_EmissiveColor).rgb * Emissive_GlobalMask248_g139236 );
				half3 Emissive_Blend260_g139236 = ( ( (Visual_Emissive255_g139236).xyz * Local_EmissiveColor278_g139236 ) * Local_EmissiveValue88_g139236 );
				float3 temp_output_3_0_g139246 = Emissive_Blend260_g139236;
				float temp_output_15_0_g139246 = _emissive_power_value;
				float3 temp_output_23_0_g139246 = ( temp_output_3_0_g139246 * temp_output_15_0_g139246 );
				float4 appendResult295_g139236 = (float4(temp_output_23_0_g139246 , Emissive_Mask103_g139236));
				#ifdef TVE_EMISSIVE
				float4 staticSwitch129_g139236 = appendResult295_g139236;
				#else
				float4 staticSwitch129_g139236 = temp_cast_6;
				#endif
				half4 Final_Emissive184_g139236 = staticSwitch129_g139236;
				float4 In_Emissive3_g139248 = Final_Emissive184_g139236;
				float In_Grayscale3_g139248 = Out_Grayscale4_g139247;
				float In_Luminosity3_g139248 = Out_Luminosity4_g139247;
				float temp_output_297_11_g139236 = Out_MultiMask4_g139247;
				float In_MultiMask3_g139248 = temp_output_297_11_g139236;
				float In_AlphaClip3_g139248 = Out_AlphaClip4_g139247;
				float In_AlphaFade3_g139248 = Out_AlphaFade4_g139247;
				float3 In_Translucency3_g139248 = Out_Translucency4_g139247;
				float In_Transmission3_g139248 = Out_Transmission4_g139247;
				float In_Thickness3_g139248 = Out_Thickness4_g139247;
				float In_Diffusion3_g139248 = Out_Diffusion4_g139247;
				{
				Data3_g139248.Dummy = In_Dummy3_g139248;
				Data3_g139248.Albedo = In_Albedo3_g139248;
				Data3_g139248.NormalTS = In_NormalTS3_g139248;
				Data3_g139248.NormalWS = In_NormalWS3_g139248;
				Data3_g139248.Shader = In_Shader3_g139248;
				Data3_g139248.Emissive= In_Emissive3_g139248;
				Data3_g139248.MultiMask = In_MultiMask3_g139248;
				Data3_g139248.Grayscale = In_Grayscale3_g139248;
				Data3_g139248.Luminosity = In_Luminosity3_g139248;
				Data3_g139248.AlphaClip = In_AlphaClip3_g139248;
				Data3_g139248.AlphaFade = In_AlphaFade3_g139248;
				Data3_g139248.Translucency = In_Translucency3_g139248;
				Data3_g139248.Transmission = In_Transmission3_g139248;
				Data3_g139248.Thickness = In_Thickness3_g139248;
				Data3_g139248.Diffusion = In_Diffusion3_g139248;
				}
				TVEVisualData Data4_g139272 = Data3_g139248;
				float Out_Dummy4_g139272 = 0;
				float3 Out_Albedo4_g139272 = float3( 0,0,0 );
				float2 Out_NormalTS4_g139272 = float2( 0,0 );
				float3 Out_NormalWS4_g139272 = float3( 0,0,0 );
				float4 Out_Shader4_g139272 = float4( 0,0,0,0 );
				float4 Out_Emissive4_g139272 = float4( 0,0,0,0 );
				float Out_MultiMask4_g139272 = 0;
				float Out_Grayscale4_g139272 = 0;
				float Out_Luminosity4_g139272 = 0;
				float Out_AlphaClip4_g139272 = 0;
				float Out_AlphaFade4_g139272 = 0;
				float3 Out_Translucency4_g139272 = float3( 0,0,0 );
				float Out_Transmission4_g139272 = 0;
				float Out_Thickness4_g139272 = 0;
				float Out_Diffusion4_g139272 = 0;
				{
				Out_Dummy4_g139272 = Data4_g139272.Dummy;
				Out_Albedo4_g139272 = Data4_g139272.Albedo;
				Out_NormalTS4_g139272 = Data4_g139272.NormalTS;
				Out_NormalWS4_g139272 = Data4_g139272.NormalWS;
				Out_Shader4_g139272 = Data4_g139272.Shader;
				Out_Emissive4_g139272= Data4_g139272.Emissive;
				Out_MultiMask4_g139272 = Data4_g139272.MultiMask;
				Out_Grayscale4_g139272 = Data4_g139272.Grayscale;
				Out_Luminosity4_g139272= Data4_g139272.Luminosity;
				Out_AlphaClip4_g139272 = Data4_g139272.AlphaClip;
				Out_AlphaFade4_g139272 = Data4_g139272.AlphaFade;
				Out_Translucency4_g139272 = Data4_g139272.Translucency;
				Out_Transmission4_g139272 = Data4_g139272.Transmission;
				Out_Thickness4_g139272 = Data4_g139272.Thickness;
				Out_Diffusion4_g139272 = Data4_g139272.Diffusion;
				}
				float4 appendResult92_g139269 = (float4(Out_Albedo4_g139272 , 1.0));
				
				float eyeDepth = i.ase_texcoord3.w;
				float temp_output_51_0_g139273 = ( -1.0 / UNITY_MATRIX_P[2].z );
				float4 appendResult94_g139269 = (float4((Out_NormalWS4_g139272*0.5 + 0.5) , ( ( eyeDepth + temp_output_51_0_g139273 ) / temp_output_51_0_g139273 )));
				
				float4 break98_g139269 = Out_Shader4_g139272;
				float4 appendResult99_g139269 = (float4(break98_g139269.x , Out_Emissive4_g139272.w , Out_MultiMask4_g139272 , break98_g139269.w));
				
				float4 temp_cast_8 = (1.0).xxxx;
				

				outGBuffer0 = appendResult92_g139269;
				outGBuffer1 = appendResult94_g139269;
				outGBuffer2 = appendResult99_g139269;
				outGBuffer3 = temp_cast_8;
				outGBuffer4 = 0;
				outGBuffer5 = 0;
				outGBuffer6 = 0;
				outGBuffer7 = 0;
				float alpha = Out_AlphaClip4_g139272;
				clip( alpha );
				outDepth = i.pos.z;
			}
			ENDCG
		}
	}
	
	
	Fallback Off
}
/*ASEBEGIN
Version=19404
Node;AmplifyShaderEditor.Vector4Node;319;-4992,-384;Inherit;False;Constant;_Vector1;Vector 1;14;0;Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;320;-6016,-384;Inherit;False;Block Model;30;;76826;7ad7765e793a6714babedee0033c36e9;14,289,1,240,1,290,1,291,1,181,0,183,0,185,0,188,0,190,0,184,0,192,0,193,0,189,0,300,0;10;102;FLOAT3;0,0,0;False;163;FLOAT3;0,0,0;False;186;FLOAT3;0,0,0;False;187;FLOAT3;0,0,0;False;166;FLOAT3;0,0,0;False;164;FLOAT3;0,0,0;False;301;FLOAT3;0,0,0;False;167;FLOAT4;0,0,0,0;False;172;FLOAT4;0,0,0,0;False;175;FLOAT4;0,0,0,0;False;1;OBJECT;128
Node;AmplifyShaderEditor.RegisterLocalVarNode;322;-5696,-384;Half;False;Model Data;-1;True;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.CustomExpressionNode;321;-4736,-384;Inherit;False;Data.Dummy = In_Dummy@$Data.CoatParams = In_CoatParams@$Data.PaintParams = In_PaintParams@$Data.GlowParams = In_GlowParams@$Data.AtmoParams = In_AtmoParams@$Data.FormParams= In_FormParams@$Data.WindParams = In_WindParams@$Data.PushParams = In_PushParams@$$$$$$;1;Call;9;True;Data;OBJECT;(TVEGlobalData)0;Out;TVEGlobalData;Half;False;True;In_Dummy;FLOAT;0;In;;Half;False;True;In_CoatParams;FLOAT4;0,0,0,0;In;;Half;False;True;In_PaintParams;FLOAT4;0,0,0,0;In;;Half;False;True;In_GlowParams;FLOAT4;0,0,0,0;In;;Half;False;True;In_AtmoParams;FLOAT4;0,0,0,0;In;;Half;False;True;In_FormParams;FLOAT4;0,0,0,0;In;;Half;False;True;In_WindParams;FLOAT4;0,0,0,0;In;;Half;False;True;In_PushParams;FLOAT4;0,0,0,0;In;;Half;False;BuildGlobalData;False;False;0;;False;10;0;FLOAT;0;False;1;OBJECT;(TVEGlobalData)0;False;2;FLOAT;0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;9;FLOAT4;0,0,0,0;False;2;FLOAT;0;OBJECT;2
Node;AmplifyShaderEditor.GetLocalVarNode;323;-3712,-384;Inherit;False;322;Model Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;324;-4416,-384;Half;False;Global Data;-1;True;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;325;-3456,-256;Inherit;False;322;Model Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;326;-3456,-192;Inherit;False;324;Global Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.FunctionNode;327;-3456,-384;Inherit;False;Block Main;39;;113726;b04cfed9a7b4c0841afdb49a38c282c5;5,65,1,136,1,41,1,133,1,40,1;1;225;OBJECT;0,0,0,0;False;1;OBJECT;106
Node;AmplifyShaderEditor.RangedFloatNode;328;-3136,-128;Half;False;Property;_SecondBakeMode;_SecondBakeMode;227;0;Fetch;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;329;-3200,-256;Inherit;False;Block Layer;65;;114886;5f6a6b9e0b5515744bf8e48a9ccead1b;7,986,1,1008,0,709,1,726,1,748,1,747,1,746,1;3;585;OBJECT;0,0,0,0;False;633;OBJECT;0,0,0,0;False;974;OBJECT;0,0,0,0;False;1;OBJECT;552
Node;AmplifyShaderEditor.GetLocalVarNode;330;-2816,-256;Inherit;False;322;Model Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.FunctionNode;331;-2816,-384;Inherit;False;If Visual Data;-1;;114917;947a79bd19d4b8e46835240e033f082b;0;3;3;OBJECT;0;False;17;OBJECT;0;False;19;FLOAT;0;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;332;-2816,-192;Inherit;False;324;Global Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.RangedFloatNode;333;-2496,-128;Half;False;Property;_ThirdBakeMode;_ThirdBakeMode;228;0;Fetch;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;334;-2560,-256;Inherit;False;Block Detail;112;;114918;a5b52fdec7b855a4fba859a90e837892;7,990,1,1013,0,709,1,726,1,748,1,747,1,746,1;3;585;OBJECT;0,0,0,0;False;633;OBJECT;0,0,0,0;False;971;OBJECT;0,0,0,0;False;1;OBJECT;552
Node;AmplifyShaderEditor.FunctionNode;335;-2176,-384;Inherit;False;If Visual Data;-1;;114949;947a79bd19d4b8e46835240e033f082b;0;3;3;OBJECT;0;False;17;OBJECT;0;False;19;FLOAT;0;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;336;-2176,-256;Inherit;False;322;Model Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.RangedFloatNode;337;-1888,-128;Half;False;Property;_OcclusionBakeMode;_OcclusionBakeMode;229;0;Fetch;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;338;-1888,-256;Inherit;False;Block Occlusion;157;;114950;ec16733ec52362048954a75640fbe560;1,210,1;2;144;OBJECT;0,0,0,0;False;204;OBJECT;0,0,0,0;False;1;OBJECT;116
Node;AmplifyShaderEditor.FunctionNode;339;-1536,-384;Inherit;False;If Visual Data;-1;;114960;947a79bd19d4b8e46835240e033f082b;0;3;3;OBJECT;0;False;17;OBJECT;0;False;19;FLOAT;0;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;340;-1536,-256;Inherit;False;322;Model Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.FunctionNode;341;-1248,-256;Inherit;False;Block Gradient;169;;114961;1f0cb348753541648acbe7a6adce694e;1,228,1;2;144;OBJECT;0,0,0,0;False;222;OBJECT;0,0,0,0;False;1;OBJECT;116
Node;AmplifyShaderEditor.RangedFloatNode;342;-1216,-128;Half;False;Property;_GradientBakeMode;_GradientBakeMode;230;0;Fetch;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;343;-896,-384;Inherit;False;If Visual Data;-1;;114971;947a79bd19d4b8e46835240e033f082b;0;3;3;OBJECT;0;False;17;OBJECT;0;False;19;FLOAT;0;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;354;-896,-256;Inherit;False;322;Model Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;355;-896,-192;Inherit;False;324;Global Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.FunctionNode;356;-640,-256;Inherit;False;Block Overlay;182;;138587;8ae9c8285a7817844a51243251284d21;9,821,1,819,1,813,1,910,0,826,1,823,1,828,1,844,0,447,0;4;572;OBJECT;0,0,0,0;False;596;OBJECT;0,0,0,0;False;600;OBJECT;0,0,0,0;False;445;FLOAT;1;False;1;OBJECT;566
Node;AmplifyShaderEditor.RangedFloatNode;357;-576,-128;Half;False;Property;_OverlayBakeMode;_OverlayBakeMode;231;0;Fetch;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;358;-256,-384;Inherit;False;If Visual Data;-1;;138617;947a79bd19d4b8e46835240e033f082b;0;3;3;OBJECT;0;False;17;OBJECT;0;False;19;FLOAT;0;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;379;-256,-256;Inherit;False;322;Model Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;380;-256,-192;Inherit;False;324;Global Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.FunctionNode;378;128,-384;Inherit;False;Block Emissive;6;;139236;64497f287b9096b43b688b52b4a0bf20;5,282,0,273,1,275,1,264,1,267,1;3;146;OBJECT;0,0,0,0;False;148;OBJECT;0,0,0,0;False;178;OBJECT;0,0,0,0;False;1;OBJECT;183
Node;AmplifyShaderEditor.RegisterLocalVarNode;368;512,-384;Half;False;Visual Data;-1;True;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;369;1280,-384;Inherit;False;368;Visual Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.GetLocalVarNode;370;1280,-320;Inherit;False;322;Model Data;1;0;OBJECT;;False;1;OBJECT;0
Node;AmplifyShaderEditor.FunctionNode;373;1856,-512;Inherit;False;Base Compile;-1;;139251;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;268;1536,-512;Half;False;Property;_RenderCull;_RenderCull;232;1;[HideInInspector];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;383;1536,-384;Inherit;False;Block Baker Output;0;;139269;5fadd80fe4bec3e42b1e9ce050e0c79b;0;2;17;OBJECT;;False;104;OBJECT;;False;5;FLOAT4;90;FLOAT4;96;FLOAT4;97;FLOAT;113;FLOAT;93
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;199;1888,-384;Float;False;True;-1;2;;100;18;Hidden/BOXOPHOBIC/The Visual Engine Lite/Helpers/Impostors Baker;f53051a8190f7044fa936bd7fbe116c1;True;Unlit;0;0;Unlit;10;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;_RenderCull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;5;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;0;;0;0;Standard;0;0;1;True;False;;True;0
WireConnection;322;0;320;128
WireConnection;321;3;319;0
WireConnection;321;4;319;0
WireConnection;321;6;319;0
WireConnection;324;0;321;2
WireConnection;327;225;323;0
WireConnection;329;585;327;106
WireConnection;329;633;325;0
WireConnection;329;974;326;0
WireConnection;331;3;327;106
WireConnection;331;17;329;552
WireConnection;331;19;328;0
WireConnection;334;585;331;0
WireConnection;334;633;330;0
WireConnection;334;971;332;0
WireConnection;335;3;331;0
WireConnection;335;17;334;552
WireConnection;335;19;333;0
WireConnection;338;144;335;0
WireConnection;338;204;336;0
WireConnection;339;3;335;0
WireConnection;339;17;338;116
WireConnection;339;19;337;0
WireConnection;341;144;339;0
WireConnection;341;222;340;0
WireConnection;343;3;339;0
WireConnection;343;17;341;116
WireConnection;343;19;342;0
WireConnection;356;572;343;0
WireConnection;356;596;354;0
WireConnection;356;600;355;0
WireConnection;358;3;343;0
WireConnection;358;17;356;566
WireConnection;358;19;357;0
WireConnection;378;146;358;0
WireConnection;378;148;379;0
WireConnection;378;178;380;0
WireConnection;368;0;378;183
WireConnection;383;17;369;0
WireConnection;199;0;383;90
WireConnection;199;1;383;96
WireConnection;199;2;383;97
WireConnection;199;3;383;113
WireConnection;199;8;383;93
ASEEND*/
//CHKSM=13E4F29F9CBBEC21FA44800FBC1EE7A84DEC1EE7