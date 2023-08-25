module bht(
  input         clock,
  input         reset,
  input         io_valid,
  input  [31:0] io_pc,
  output        io_takenPre,
  output [31:0] io_takenPrePC,
  output        io_ready,
  input  [31:0] io_op1,
  input  [31:0] io_op2,
  input         io_takenValid,
  input         io_takenMiss,
  input         io_exTakenPre,
  input  [31:0] io_nextPC,
  input  [31:0] io_takenPC
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_197;
  reg [31:0] _RAND_198;
  reg [31:0] _RAND_199;
  reg [31:0] _RAND_200;
  reg [31:0] _RAND_201;
  reg [31:0] _RAND_202;
  reg [31:0] _RAND_203;
  reg [31:0] _RAND_204;
  reg [31:0] _RAND_205;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_213;
  reg [31:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [31:0] _RAND_221;
  reg [31:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [31:0] _RAND_224;
  reg [31:0] _RAND_225;
  reg [31:0] _RAND_226;
  reg [31:0] _RAND_227;
  reg [31:0] _RAND_228;
  reg [31:0] _RAND_229;
  reg [31:0] _RAND_230;
  reg [31:0] _RAND_231;
  reg [31:0] _RAND_232;
  reg [31:0] _RAND_233;
  reg [31:0] _RAND_234;
  reg [31:0] _RAND_235;
  reg [31:0] _RAND_236;
  reg [31:0] _RAND_237;
  reg [31:0] _RAND_238;
  reg [31:0] _RAND_239;
  reg [31:0] _RAND_240;
  reg [31:0] _RAND_241;
  reg [31:0] _RAND_242;
  reg [31:0] _RAND_243;
  reg [31:0] _RAND_244;
  reg [31:0] _RAND_245;
  reg [31:0] _RAND_246;
  reg [31:0] _RAND_247;
  reg [31:0] _RAND_248;
  reg [31:0] _RAND_249;
  reg [31:0] _RAND_250;
  reg [31:0] _RAND_251;
  reg [31:0] _RAND_252;
  reg [31:0] _RAND_253;
  reg [31:0] _RAND_254;
  reg [31:0] _RAND_255;
  reg [31:0] _RAND_256;
  reg [31:0] _RAND_257;
  reg [31:0] _RAND_258;
  reg [31:0] _RAND_259;
  reg [31:0] _RAND_260;
  reg [31:0] _RAND_261;
  reg [31:0] _RAND_262;
  reg [31:0] _RAND_263;
  reg [31:0] _RAND_264;
  reg [31:0] _RAND_265;
  reg [31:0] _RAND_266;
  reg [31:0] _RAND_267;
  reg [31:0] _RAND_268;
  reg [31:0] _RAND_269;
  reg [31:0] _RAND_270;
  reg [31:0] _RAND_271;
  reg [31:0] _RAND_272;
  reg [31:0] _RAND_273;
  reg [31:0] _RAND_274;
  reg [31:0] _RAND_275;
  reg [31:0] _RAND_276;
  reg [31:0] _RAND_277;
  reg [31:0] _RAND_278;
  reg [31:0] _RAND_279;
  reg [31:0] _RAND_280;
  reg [31:0] _RAND_281;
  reg [31:0] _RAND_282;
  reg [31:0] _RAND_283;
  reg [31:0] _RAND_284;
  reg [31:0] _RAND_285;
  reg [31:0] _RAND_286;
  reg [31:0] _RAND_287;
  reg [31:0] _RAND_288;
  reg [31:0] _RAND_289;
  reg [31:0] _RAND_290;
  reg [31:0] _RAND_291;
  reg [31:0] _RAND_292;
  reg [31:0] _RAND_293;
  reg [31:0] _RAND_294;
  reg [31:0] _RAND_295;
  reg [31:0] _RAND_296;
  reg [31:0] _RAND_297;
  reg [31:0] _RAND_298;
  reg [31:0] _RAND_299;
  reg [31:0] _RAND_300;
  reg [31:0] _RAND_301;
  reg [31:0] _RAND_302;
  reg [31:0] _RAND_303;
  reg [31:0] _RAND_304;
  reg [31:0] _RAND_305;
  reg [31:0] _RAND_306;
  reg [31:0] _RAND_307;
  reg [31:0] _RAND_308;
  reg [31:0] _RAND_309;
  reg [31:0] _RAND_310;
  reg [31:0] _RAND_311;
  reg [31:0] _RAND_312;
  reg [31:0] _RAND_313;
  reg [31:0] _RAND_314;
  reg [31:0] _RAND_315;
  reg [31:0] _RAND_316;
  reg [31:0] _RAND_317;
  reg [31:0] _RAND_318;
  reg [31:0] _RAND_319;
  reg [31:0] _RAND_320;
  reg [31:0] _RAND_321;
  reg [31:0] _RAND_322;
  reg [31:0] _RAND_323;
  reg [31:0] _RAND_324;
  reg [31:0] _RAND_325;
  reg [31:0] _RAND_326;
  reg [31:0] _RAND_327;
  reg [31:0] _RAND_328;
  reg [31:0] _RAND_329;
  reg [31:0] _RAND_330;
  reg [31:0] _RAND_331;
  reg [31:0] _RAND_332;
  reg [31:0] _RAND_333;
  reg [31:0] _RAND_334;
  reg [31:0] _RAND_335;
  reg [31:0] _RAND_336;
  reg [31:0] _RAND_337;
  reg [31:0] _RAND_338;
  reg [31:0] _RAND_339;
  reg [31:0] _RAND_340;
  reg [31:0] _RAND_341;
  reg [31:0] _RAND_342;
  reg [31:0] _RAND_343;
  reg [31:0] _RAND_344;
  reg [31:0] _RAND_345;
  reg [31:0] _RAND_346;
  reg [31:0] _RAND_347;
  reg [31:0] _RAND_348;
  reg [31:0] _RAND_349;
  reg [31:0] _RAND_350;
  reg [31:0] _RAND_351;
  reg [31:0] _RAND_352;
  reg [31:0] _RAND_353;
  reg [31:0] _RAND_354;
  reg [31:0] _RAND_355;
  reg [31:0] _RAND_356;
  reg [31:0] _RAND_357;
  reg [31:0] _RAND_358;
  reg [31:0] _RAND_359;
  reg [31:0] _RAND_360;
  reg [31:0] _RAND_361;
  reg [31:0] _RAND_362;
  reg [31:0] _RAND_363;
  reg [31:0] _RAND_364;
  reg [31:0] _RAND_365;
  reg [31:0] _RAND_366;
  reg [31:0] _RAND_367;
  reg [31:0] _RAND_368;
  reg [31:0] _RAND_369;
  reg [31:0] _RAND_370;
  reg [31:0] _RAND_371;
  reg [31:0] _RAND_372;
  reg [31:0] _RAND_373;
  reg [31:0] _RAND_374;
  reg [31:0] _RAND_375;
  reg [31:0] _RAND_376;
  reg [31:0] _RAND_377;
  reg [31:0] _RAND_378;
  reg [31:0] _RAND_379;
  reg [31:0] _RAND_380;
  reg [31:0] _RAND_381;
  reg [31:0] _RAND_382;
  reg [31:0] _RAND_383;
  reg [31:0] _RAND_384;
  reg [31:0] _RAND_385;
  reg [31:0] _RAND_386;
  reg [31:0] _RAND_387;
  reg [31:0] _RAND_388;
  reg [31:0] _RAND_389;
  reg [31:0] _RAND_390;
  reg [31:0] _RAND_391;
  reg [31:0] _RAND_392;
  reg [31:0] _RAND_393;
  reg [31:0] _RAND_394;
  reg [31:0] _RAND_395;
  reg [31:0] _RAND_396;
  reg [31:0] _RAND_397;
  reg [31:0] _RAND_398;
  reg [31:0] _RAND_399;
  reg [31:0] _RAND_400;
  reg [31:0] _RAND_401;
  reg [31:0] _RAND_402;
  reg [31:0] _RAND_403;
  reg [31:0] _RAND_404;
  reg [31:0] _RAND_405;
  reg [31:0] _RAND_406;
  reg [31:0] _RAND_407;
  reg [31:0] _RAND_408;
  reg [31:0] _RAND_409;
  reg [31:0] _RAND_410;
  reg [31:0] _RAND_411;
  reg [31:0] _RAND_412;
  reg [31:0] _RAND_413;
  reg [31:0] _RAND_414;
  reg [31:0] _RAND_415;
  reg [31:0] _RAND_416;
  reg [31:0] _RAND_417;
  reg [31:0] _RAND_418;
  reg [31:0] _RAND_419;
  reg [31:0] _RAND_420;
  reg [31:0] _RAND_421;
  reg [31:0] _RAND_422;
  reg [31:0] _RAND_423;
  reg [31:0] _RAND_424;
  reg [31:0] _RAND_425;
  reg [31:0] _RAND_426;
  reg [31:0] _RAND_427;
  reg [31:0] _RAND_428;
  reg [31:0] _RAND_429;
  reg [31:0] _RAND_430;
  reg [31:0] _RAND_431;
  reg [31:0] _RAND_432;
  reg [31:0] _RAND_433;
  reg [31:0] _RAND_434;
  reg [31:0] _RAND_435;
  reg [31:0] _RAND_436;
  reg [31:0] _RAND_437;
  reg [31:0] _RAND_438;
  reg [31:0] _RAND_439;
  reg [31:0] _RAND_440;
  reg [31:0] _RAND_441;
  reg [31:0] _RAND_442;
  reg [31:0] _RAND_443;
  reg [31:0] _RAND_444;
  reg [31:0] _RAND_445;
  reg [31:0] _RAND_446;
  reg [31:0] _RAND_447;
  reg [31:0] _RAND_448;
  reg [31:0] _RAND_449;
`endif // RANDOMIZE_REG_INIT
  reg [5:0] ghr; // @[bht_btb.scala 115:22]
  reg [5:0] bht_0; // @[bht_btb.scala 116:22]
  reg [5:0] bht_1; // @[bht_btb.scala 116:22]
  reg [5:0] bht_2; // @[bht_btb.scala 116:22]
  reg [5:0] bht_3; // @[bht_btb.scala 116:22]
  reg [5:0] bht_4; // @[bht_btb.scala 116:22]
  reg [5:0] bht_5; // @[bht_btb.scala 116:22]
  reg [5:0] bht_6; // @[bht_btb.scala 116:22]
  reg [5:0] bht_7; // @[bht_btb.scala 116:22]
  reg [5:0] bht_8; // @[bht_btb.scala 116:22]
  reg [5:0] bht_9; // @[bht_btb.scala 116:22]
  reg [5:0] bht_10; // @[bht_btb.scala 116:22]
  reg [5:0] bht_11; // @[bht_btb.scala 116:22]
  reg [5:0] bht_12; // @[bht_btb.scala 116:22]
  reg [5:0] bht_13; // @[bht_btb.scala 116:22]
  reg [5:0] bht_14; // @[bht_btb.scala 116:22]
  reg [5:0] bht_15; // @[bht_btb.scala 116:22]
  reg [5:0] bht_16; // @[bht_btb.scala 116:22]
  reg [5:0] bht_17; // @[bht_btb.scala 116:22]
  reg [5:0] bht_18; // @[bht_btb.scala 116:22]
  reg [5:0] bht_19; // @[bht_btb.scala 116:22]
  reg [5:0] bht_20; // @[bht_btb.scala 116:22]
  reg [5:0] bht_21; // @[bht_btb.scala 116:22]
  reg [5:0] bht_22; // @[bht_btb.scala 116:22]
  reg [5:0] bht_23; // @[bht_btb.scala 116:22]
  reg [5:0] bht_24; // @[bht_btb.scala 116:22]
  reg [5:0] bht_25; // @[bht_btb.scala 116:22]
  reg [5:0] bht_26; // @[bht_btb.scala 116:22]
  reg [5:0] bht_27; // @[bht_btb.scala 116:22]
  reg [5:0] bht_28; // @[bht_btb.scala 116:22]
  reg [5:0] bht_29; // @[bht_btb.scala 116:22]
  reg [5:0] bht_30; // @[bht_btb.scala 116:22]
  reg [5:0] bht_31; // @[bht_btb.scala 116:22]
  reg [5:0] bht_32; // @[bht_btb.scala 116:22]
  reg [5:0] bht_33; // @[bht_btb.scala 116:22]
  reg [5:0] bht_34; // @[bht_btb.scala 116:22]
  reg [5:0] bht_35; // @[bht_btb.scala 116:22]
  reg [5:0] bht_36; // @[bht_btb.scala 116:22]
  reg [5:0] bht_37; // @[bht_btb.scala 116:22]
  reg [5:0] bht_38; // @[bht_btb.scala 116:22]
  reg [5:0] bht_39; // @[bht_btb.scala 116:22]
  reg [5:0] bht_40; // @[bht_btb.scala 116:22]
  reg [5:0] bht_41; // @[bht_btb.scala 116:22]
  reg [5:0] bht_42; // @[bht_btb.scala 116:22]
  reg [5:0] bht_43; // @[bht_btb.scala 116:22]
  reg [5:0] bht_44; // @[bht_btb.scala 116:22]
  reg [5:0] bht_45; // @[bht_btb.scala 116:22]
  reg [5:0] bht_46; // @[bht_btb.scala 116:22]
  reg [5:0] bht_47; // @[bht_btb.scala 116:22]
  reg [5:0] bht_48; // @[bht_btb.scala 116:22]
  reg [5:0] bht_49; // @[bht_btb.scala 116:22]
  reg [5:0] bht_50; // @[bht_btb.scala 116:22]
  reg [5:0] bht_51; // @[bht_btb.scala 116:22]
  reg [5:0] bht_52; // @[bht_btb.scala 116:22]
  reg [5:0] bht_53; // @[bht_btb.scala 116:22]
  reg [5:0] bht_54; // @[bht_btb.scala 116:22]
  reg [5:0] bht_55; // @[bht_btb.scala 116:22]
  reg [5:0] bht_56; // @[bht_btb.scala 116:22]
  reg [5:0] bht_57; // @[bht_btb.scala 116:22]
  reg [5:0] bht_58; // @[bht_btb.scala 116:22]
  reg [5:0] bht_59; // @[bht_btb.scala 116:22]
  reg [5:0] bht_60; // @[bht_btb.scala 116:22]
  reg [5:0] bht_61; // @[bht_btb.scala 116:22]
  reg [5:0] bht_62; // @[bht_btb.scala 116:22]
  reg [5:0] bht_63; // @[bht_btb.scala 116:22]
  reg [1:0] pht_0_0; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_1; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_2; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_3; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_4; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_5; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_6; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_7; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_8; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_9; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_10; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_11; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_12; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_13; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_14; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_15; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_16; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_17; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_18; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_19; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_20; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_21; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_22; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_23; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_24; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_25; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_26; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_27; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_28; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_29; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_30; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_31; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_32; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_33; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_34; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_35; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_36; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_37; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_38; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_39; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_40; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_41; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_42; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_43; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_44; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_45; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_46; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_47; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_48; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_49; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_50; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_51; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_52; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_53; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_54; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_55; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_56; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_57; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_58; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_59; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_60; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_61; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_62; // @[bht_btb.scala 117:22]
  reg [1:0] pht_0_63; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_0; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_1; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_2; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_3; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_4; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_5; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_6; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_7; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_8; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_9; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_10; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_11; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_12; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_13; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_14; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_15; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_16; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_17; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_18; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_19; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_20; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_21; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_22; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_23; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_24; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_25; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_26; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_27; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_28; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_29; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_30; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_31; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_32; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_33; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_34; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_35; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_36; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_37; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_38; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_39; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_40; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_41; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_42; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_43; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_44; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_45; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_46; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_47; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_48; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_49; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_50; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_51; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_52; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_53; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_54; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_55; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_56; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_57; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_58; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_59; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_60; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_61; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_62; // @[bht_btb.scala 117:22]
  reg [1:0] pht_1_63; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_0; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_1; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_2; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_3; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_4; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_5; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_6; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_7; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_8; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_9; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_10; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_11; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_12; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_13; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_14; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_15; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_16; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_17; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_18; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_19; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_20; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_21; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_22; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_23; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_24; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_25; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_26; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_27; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_28; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_29; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_30; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_31; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_32; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_33; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_34; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_35; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_36; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_37; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_38; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_39; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_40; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_41; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_42; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_43; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_44; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_45; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_46; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_47; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_48; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_49; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_50; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_51; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_52; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_53; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_54; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_55; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_56; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_57; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_58; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_59; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_60; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_61; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_62; // @[bht_btb.scala 117:22]
  reg [1:0] pht_2_63; // @[bht_btb.scala 117:22]
  reg  btbV_0; // @[bht_btb.scala 120:23]
  reg  btbV_1; // @[bht_btb.scala 120:23]
  reg  btbV_2; // @[bht_btb.scala 120:23]
  reg  btbV_3; // @[bht_btb.scala 120:23]
  reg  btbV_4; // @[bht_btb.scala 120:23]
  reg  btbV_5; // @[bht_btb.scala 120:23]
  reg  btbV_6; // @[bht_btb.scala 120:23]
  reg  btbV_7; // @[bht_btb.scala 120:23]
  reg  btbV_8; // @[bht_btb.scala 120:23]
  reg  btbV_9; // @[bht_btb.scala 120:23]
  reg  btbV_10; // @[bht_btb.scala 120:23]
  reg  btbV_11; // @[bht_btb.scala 120:23]
  reg  btbV_12; // @[bht_btb.scala 120:23]
  reg  btbV_13; // @[bht_btb.scala 120:23]
  reg  btbV_14; // @[bht_btb.scala 120:23]
  reg  btbV_15; // @[bht_btb.scala 120:23]
  reg  btbV_16; // @[bht_btb.scala 120:23]
  reg  btbV_17; // @[bht_btb.scala 120:23]
  reg  btbV_18; // @[bht_btb.scala 120:23]
  reg  btbV_19; // @[bht_btb.scala 120:23]
  reg  btbV_20; // @[bht_btb.scala 120:23]
  reg  btbV_21; // @[bht_btb.scala 120:23]
  reg  btbV_22; // @[bht_btb.scala 120:23]
  reg  btbV_23; // @[bht_btb.scala 120:23]
  reg  btbV_24; // @[bht_btb.scala 120:23]
  reg  btbV_25; // @[bht_btb.scala 120:23]
  reg  btbV_26; // @[bht_btb.scala 120:23]
  reg  btbV_27; // @[bht_btb.scala 120:23]
  reg  btbV_28; // @[bht_btb.scala 120:23]
  reg  btbV_29; // @[bht_btb.scala 120:23]
  reg  btbV_30; // @[bht_btb.scala 120:23]
  reg  btbV_31; // @[bht_btb.scala 120:23]
  reg  btbV_32; // @[bht_btb.scala 120:23]
  reg  btbV_33; // @[bht_btb.scala 120:23]
  reg  btbV_34; // @[bht_btb.scala 120:23]
  reg  btbV_35; // @[bht_btb.scala 120:23]
  reg  btbV_36; // @[bht_btb.scala 120:23]
  reg  btbV_37; // @[bht_btb.scala 120:23]
  reg  btbV_38; // @[bht_btb.scala 120:23]
  reg  btbV_39; // @[bht_btb.scala 120:23]
  reg  btbV_40; // @[bht_btb.scala 120:23]
  reg  btbV_41; // @[bht_btb.scala 120:23]
  reg  btbV_42; // @[bht_btb.scala 120:23]
  reg  btbV_43; // @[bht_btb.scala 120:23]
  reg  btbV_44; // @[bht_btb.scala 120:23]
  reg  btbV_45; // @[bht_btb.scala 120:23]
  reg  btbV_46; // @[bht_btb.scala 120:23]
  reg  btbV_47; // @[bht_btb.scala 120:23]
  reg  btbV_48; // @[bht_btb.scala 120:23]
  reg  btbV_49; // @[bht_btb.scala 120:23]
  reg  btbV_50; // @[bht_btb.scala 120:23]
  reg  btbV_51; // @[bht_btb.scala 120:23]
  reg  btbV_52; // @[bht_btb.scala 120:23]
  reg  btbV_53; // @[bht_btb.scala 120:23]
  reg  btbV_54; // @[bht_btb.scala 120:23]
  reg  btbV_55; // @[bht_btb.scala 120:23]
  reg  btbV_56; // @[bht_btb.scala 120:23]
  reg  btbV_57; // @[bht_btb.scala 120:23]
  reg  btbV_58; // @[bht_btb.scala 120:23]
  reg  btbV_59; // @[bht_btb.scala 120:23]
  reg  btbV_60; // @[bht_btb.scala 120:23]
  reg  btbV_61; // @[bht_btb.scala 120:23]
  reg  btbV_62; // @[bht_btb.scala 120:23]
  reg  btbV_63; // @[bht_btb.scala 120:23]
  reg [5:0] btbTag_0; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_1; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_2; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_3; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_4; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_5; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_6; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_7; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_8; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_9; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_10; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_11; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_12; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_13; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_14; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_15; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_16; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_17; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_18; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_19; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_20; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_21; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_22; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_23; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_24; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_25; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_26; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_27; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_28; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_29; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_30; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_31; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_32; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_33; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_34; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_35; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_36; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_37; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_38; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_39; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_40; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_41; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_42; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_43; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_44; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_45; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_46; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_47; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_48; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_49; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_50; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_51; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_52; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_53; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_54; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_55; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_56; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_57; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_58; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_59; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_60; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_61; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_62; // @[bht_btb.scala 121:25]
  reg [5:0] btbTag_63; // @[bht_btb.scala 121:25]
  reg [2:0] btbMeta_0; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_1; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_2; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_3; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_4; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_5; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_6; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_7; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_8; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_9; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_10; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_11; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_12; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_13; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_14; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_15; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_16; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_17; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_18; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_19; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_20; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_21; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_22; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_23; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_24; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_25; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_26; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_27; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_28; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_29; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_30; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_31; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_32; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_33; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_34; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_35; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_36; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_37; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_38; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_39; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_40; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_41; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_42; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_43; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_44; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_45; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_46; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_47; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_48; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_49; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_50; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_51; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_52; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_53; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_54; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_55; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_56; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_57; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_58; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_59; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_60; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_61; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_62; // @[bht_btb.scala 122:26]
  reg [2:0] btbMeta_63; // @[bht_btb.scala 122:26]
  wire  p1Addr_hash0 = io_pc[2] ^ (io_pc[8] ^ io_pc[13]); // @[bht_btb.scala 78:27]
  wire  p1Addr_hash1 = io_pc[8] ^ io_pc[9] ^ io_pc[3]; // @[bht_btb.scala 79:39]
  wire  p1Addr_hash2 = io_pc[4] ^ (io_pc[10] ^ io_pc[9]); // @[bht_btb.scala 80:27]
  wire  p1Addr_hash3 = io_pc[5] ^ (io_pc[11] ^ io_pc[10]); // @[bht_btb.scala 81:27]
  wire  p1Addr_hash4 = io_pc[6] ^ (io_pc[12] ^ io_pc[11]); // @[bht_btb.scala 82:27]
  wire  p1Addr_hash5 = io_pc[7] ^ (io_pc[13] ^ io_pc[12]); // @[bht_btb.scala 83:27]
  wire [5:0] _p1Addr_T_5 = {p1Addr_hash5,p1Addr_hash4,p1Addr_hash3,p1Addr_hash2,p1Addr_hash1,p1Addr_hash0}; // @[bht_btb.scala 84:49]
  wire [5:0] p1Addr = _p1Addr_T_5 ^ ghr; // @[bht_btb.scala 105:77]
  wire [5:0] _GEN_1 = 6'h1 == _p1Addr_T_5 ? bht_1 : bht_0; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_2 = 6'h2 == _p1Addr_T_5 ? bht_2 : _GEN_1; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_3 = 6'h3 == _p1Addr_T_5 ? bht_3 : _GEN_2; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_4 = 6'h4 == _p1Addr_T_5 ? bht_4 : _GEN_3; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_5 = 6'h5 == _p1Addr_T_5 ? bht_5 : _GEN_4; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_6 = 6'h6 == _p1Addr_T_5 ? bht_6 : _GEN_5; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_7 = 6'h7 == _p1Addr_T_5 ? bht_7 : _GEN_6; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_8 = 6'h8 == _p1Addr_T_5 ? bht_8 : _GEN_7; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_9 = 6'h9 == _p1Addr_T_5 ? bht_9 : _GEN_8; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_10 = 6'ha == _p1Addr_T_5 ? bht_10 : _GEN_9; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_11 = 6'hb == _p1Addr_T_5 ? bht_11 : _GEN_10; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_12 = 6'hc == _p1Addr_T_5 ? bht_12 : _GEN_11; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_13 = 6'hd == _p1Addr_T_5 ? bht_13 : _GEN_12; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_14 = 6'he == _p1Addr_T_5 ? bht_14 : _GEN_13; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_15 = 6'hf == _p1Addr_T_5 ? bht_15 : _GEN_14; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_16 = 6'h10 == _p1Addr_T_5 ? bht_16 : _GEN_15; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_17 = 6'h11 == _p1Addr_T_5 ? bht_17 : _GEN_16; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_18 = 6'h12 == _p1Addr_T_5 ? bht_18 : _GEN_17; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_19 = 6'h13 == _p1Addr_T_5 ? bht_19 : _GEN_18; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_20 = 6'h14 == _p1Addr_T_5 ? bht_20 : _GEN_19; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_21 = 6'h15 == _p1Addr_T_5 ? bht_21 : _GEN_20; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_22 = 6'h16 == _p1Addr_T_5 ? bht_22 : _GEN_21; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_23 = 6'h17 == _p1Addr_T_5 ? bht_23 : _GEN_22; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_24 = 6'h18 == _p1Addr_T_5 ? bht_24 : _GEN_23; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_25 = 6'h19 == _p1Addr_T_5 ? bht_25 : _GEN_24; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_26 = 6'h1a == _p1Addr_T_5 ? bht_26 : _GEN_25; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_27 = 6'h1b == _p1Addr_T_5 ? bht_27 : _GEN_26; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_28 = 6'h1c == _p1Addr_T_5 ? bht_28 : _GEN_27; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_29 = 6'h1d == _p1Addr_T_5 ? bht_29 : _GEN_28; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_30 = 6'h1e == _p1Addr_T_5 ? bht_30 : _GEN_29; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_31 = 6'h1f == _p1Addr_T_5 ? bht_31 : _GEN_30; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_32 = 6'h20 == _p1Addr_T_5 ? bht_32 : _GEN_31; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_33 = 6'h21 == _p1Addr_T_5 ? bht_33 : _GEN_32; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_34 = 6'h22 == _p1Addr_T_5 ? bht_34 : _GEN_33; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_35 = 6'h23 == _p1Addr_T_5 ? bht_35 : _GEN_34; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_36 = 6'h24 == _p1Addr_T_5 ? bht_36 : _GEN_35; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_37 = 6'h25 == _p1Addr_T_5 ? bht_37 : _GEN_36; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_38 = 6'h26 == _p1Addr_T_5 ? bht_38 : _GEN_37; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_39 = 6'h27 == _p1Addr_T_5 ? bht_39 : _GEN_38; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_40 = 6'h28 == _p1Addr_T_5 ? bht_40 : _GEN_39; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_41 = 6'h29 == _p1Addr_T_5 ? bht_41 : _GEN_40; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_42 = 6'h2a == _p1Addr_T_5 ? bht_42 : _GEN_41; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_43 = 6'h2b == _p1Addr_T_5 ? bht_43 : _GEN_42; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_44 = 6'h2c == _p1Addr_T_5 ? bht_44 : _GEN_43; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_45 = 6'h2d == _p1Addr_T_5 ? bht_45 : _GEN_44; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_46 = 6'h2e == _p1Addr_T_5 ? bht_46 : _GEN_45; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_47 = 6'h2f == _p1Addr_T_5 ? bht_47 : _GEN_46; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_48 = 6'h30 == _p1Addr_T_5 ? bht_48 : _GEN_47; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_49 = 6'h31 == _p1Addr_T_5 ? bht_49 : _GEN_48; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_50 = 6'h32 == _p1Addr_T_5 ? bht_50 : _GEN_49; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_51 = 6'h33 == _p1Addr_T_5 ? bht_51 : _GEN_50; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_52 = 6'h34 == _p1Addr_T_5 ? bht_52 : _GEN_51; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_53 = 6'h35 == _p1Addr_T_5 ? bht_53 : _GEN_52; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_54 = 6'h36 == _p1Addr_T_5 ? bht_54 : _GEN_53; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_55 = 6'h37 == _p1Addr_T_5 ? bht_55 : _GEN_54; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_56 = 6'h38 == _p1Addr_T_5 ? bht_56 : _GEN_55; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_57 = 6'h39 == _p1Addr_T_5 ? bht_57 : _GEN_56; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_58 = 6'h3a == _p1Addr_T_5 ? bht_58 : _GEN_57; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_59 = 6'h3b == _p1Addr_T_5 ? bht_59 : _GEN_58; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_60 = 6'h3c == _p1Addr_T_5 ? bht_60 : _GEN_59; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_61 = 6'h3d == _p1Addr_T_5 ? bht_61 : _GEN_60; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_62 = 6'h3e == _p1Addr_T_5 ? bht_62 : _GEN_61; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_63 = 6'h3f == _p1Addr_T_5 ? bht_63 : _GEN_62; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _pht2Data_T_6 = _p1Addr_T_5 ^ _GEN_63; // @[bht_btb.scala 105:77]
  wire [1:0] _GEN_65 = 6'h1 == p1Addr ? pht_0_1 : pht_0_0; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_66 = 6'h2 == p1Addr ? pht_0_2 : _GEN_65; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_67 = 6'h3 == p1Addr ? pht_0_3 : _GEN_66; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_68 = 6'h4 == p1Addr ? pht_0_4 : _GEN_67; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_69 = 6'h5 == p1Addr ? pht_0_5 : _GEN_68; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_70 = 6'h6 == p1Addr ? pht_0_6 : _GEN_69; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_71 = 6'h7 == p1Addr ? pht_0_7 : _GEN_70; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_72 = 6'h8 == p1Addr ? pht_0_8 : _GEN_71; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_73 = 6'h9 == p1Addr ? pht_0_9 : _GEN_72; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_74 = 6'ha == p1Addr ? pht_0_10 : _GEN_73; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_75 = 6'hb == p1Addr ? pht_0_11 : _GEN_74; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_76 = 6'hc == p1Addr ? pht_0_12 : _GEN_75; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_77 = 6'hd == p1Addr ? pht_0_13 : _GEN_76; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_78 = 6'he == p1Addr ? pht_0_14 : _GEN_77; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_79 = 6'hf == p1Addr ? pht_0_15 : _GEN_78; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_80 = 6'h10 == p1Addr ? pht_0_16 : _GEN_79; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_81 = 6'h11 == p1Addr ? pht_0_17 : _GEN_80; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_82 = 6'h12 == p1Addr ? pht_0_18 : _GEN_81; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_83 = 6'h13 == p1Addr ? pht_0_19 : _GEN_82; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_84 = 6'h14 == p1Addr ? pht_0_20 : _GEN_83; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_85 = 6'h15 == p1Addr ? pht_0_21 : _GEN_84; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_86 = 6'h16 == p1Addr ? pht_0_22 : _GEN_85; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_87 = 6'h17 == p1Addr ? pht_0_23 : _GEN_86; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_88 = 6'h18 == p1Addr ? pht_0_24 : _GEN_87; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_89 = 6'h19 == p1Addr ? pht_0_25 : _GEN_88; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_90 = 6'h1a == p1Addr ? pht_0_26 : _GEN_89; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_91 = 6'h1b == p1Addr ? pht_0_27 : _GEN_90; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_92 = 6'h1c == p1Addr ? pht_0_28 : _GEN_91; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_93 = 6'h1d == p1Addr ? pht_0_29 : _GEN_92; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_94 = 6'h1e == p1Addr ? pht_0_30 : _GEN_93; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_95 = 6'h1f == p1Addr ? pht_0_31 : _GEN_94; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_96 = 6'h20 == p1Addr ? pht_0_32 : _GEN_95; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_97 = 6'h21 == p1Addr ? pht_0_33 : _GEN_96; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_98 = 6'h22 == p1Addr ? pht_0_34 : _GEN_97; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_99 = 6'h23 == p1Addr ? pht_0_35 : _GEN_98; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_100 = 6'h24 == p1Addr ? pht_0_36 : _GEN_99; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_101 = 6'h25 == p1Addr ? pht_0_37 : _GEN_100; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_102 = 6'h26 == p1Addr ? pht_0_38 : _GEN_101; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_103 = 6'h27 == p1Addr ? pht_0_39 : _GEN_102; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_104 = 6'h28 == p1Addr ? pht_0_40 : _GEN_103; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_105 = 6'h29 == p1Addr ? pht_0_41 : _GEN_104; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_106 = 6'h2a == p1Addr ? pht_0_42 : _GEN_105; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_107 = 6'h2b == p1Addr ? pht_0_43 : _GEN_106; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_108 = 6'h2c == p1Addr ? pht_0_44 : _GEN_107; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_109 = 6'h2d == p1Addr ? pht_0_45 : _GEN_108; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_110 = 6'h2e == p1Addr ? pht_0_46 : _GEN_109; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_111 = 6'h2f == p1Addr ? pht_0_47 : _GEN_110; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_112 = 6'h30 == p1Addr ? pht_0_48 : _GEN_111; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_113 = 6'h31 == p1Addr ? pht_0_49 : _GEN_112; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_114 = 6'h32 == p1Addr ? pht_0_50 : _GEN_113; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_115 = 6'h33 == p1Addr ? pht_0_51 : _GEN_114; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_116 = 6'h34 == p1Addr ? pht_0_52 : _GEN_115; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_117 = 6'h35 == p1Addr ? pht_0_53 : _GEN_116; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_118 = 6'h36 == p1Addr ? pht_0_54 : _GEN_117; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_119 = 6'h37 == p1Addr ? pht_0_55 : _GEN_118; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_120 = 6'h38 == p1Addr ? pht_0_56 : _GEN_119; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_121 = 6'h39 == p1Addr ? pht_0_57 : _GEN_120; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_122 = 6'h3a == p1Addr ? pht_0_58 : _GEN_121; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_123 = 6'h3b == p1Addr ? pht_0_59 : _GEN_122; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_124 = 6'h3c == p1Addr ? pht_0_60 : _GEN_123; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_125 = 6'h3d == p1Addr ? pht_0_61 : _GEN_124; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_126 = 6'h3e == p1Addr ? pht_0_62 : _GEN_125; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_127 = 6'h3f == p1Addr ? pht_0_63 : _GEN_126; // @[bht_btb.scala 129:{32,32}]
  wire [1:0] _GEN_129 = 6'h1 == _pht2Data_T_6 ? pht_2_1 : pht_2_0; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_130 = 6'h2 == _pht2Data_T_6 ? pht_2_2 : _GEN_129; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_131 = 6'h3 == _pht2Data_T_6 ? pht_2_3 : _GEN_130; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_132 = 6'h4 == _pht2Data_T_6 ? pht_2_4 : _GEN_131; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_133 = 6'h5 == _pht2Data_T_6 ? pht_2_5 : _GEN_132; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_134 = 6'h6 == _pht2Data_T_6 ? pht_2_6 : _GEN_133; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_135 = 6'h7 == _pht2Data_T_6 ? pht_2_7 : _GEN_134; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_136 = 6'h8 == _pht2Data_T_6 ? pht_2_8 : _GEN_135; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_137 = 6'h9 == _pht2Data_T_6 ? pht_2_9 : _GEN_136; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_138 = 6'ha == _pht2Data_T_6 ? pht_2_10 : _GEN_137; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_139 = 6'hb == _pht2Data_T_6 ? pht_2_11 : _GEN_138; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_140 = 6'hc == _pht2Data_T_6 ? pht_2_12 : _GEN_139; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_141 = 6'hd == _pht2Data_T_6 ? pht_2_13 : _GEN_140; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_142 = 6'he == _pht2Data_T_6 ? pht_2_14 : _GEN_141; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_143 = 6'hf == _pht2Data_T_6 ? pht_2_15 : _GEN_142; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_144 = 6'h10 == _pht2Data_T_6 ? pht_2_16 : _GEN_143; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_145 = 6'h11 == _pht2Data_T_6 ? pht_2_17 : _GEN_144; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_146 = 6'h12 == _pht2Data_T_6 ? pht_2_18 : _GEN_145; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_147 = 6'h13 == _pht2Data_T_6 ? pht_2_19 : _GEN_146; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_148 = 6'h14 == _pht2Data_T_6 ? pht_2_20 : _GEN_147; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_149 = 6'h15 == _pht2Data_T_6 ? pht_2_21 : _GEN_148; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_150 = 6'h16 == _pht2Data_T_6 ? pht_2_22 : _GEN_149; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_151 = 6'h17 == _pht2Data_T_6 ? pht_2_23 : _GEN_150; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_152 = 6'h18 == _pht2Data_T_6 ? pht_2_24 : _GEN_151; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_153 = 6'h19 == _pht2Data_T_6 ? pht_2_25 : _GEN_152; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_154 = 6'h1a == _pht2Data_T_6 ? pht_2_26 : _GEN_153; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_155 = 6'h1b == _pht2Data_T_6 ? pht_2_27 : _GEN_154; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_156 = 6'h1c == _pht2Data_T_6 ? pht_2_28 : _GEN_155; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_157 = 6'h1d == _pht2Data_T_6 ? pht_2_29 : _GEN_156; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_158 = 6'h1e == _pht2Data_T_6 ? pht_2_30 : _GEN_157; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_159 = 6'h1f == _pht2Data_T_6 ? pht_2_31 : _GEN_158; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_160 = 6'h20 == _pht2Data_T_6 ? pht_2_32 : _GEN_159; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_161 = 6'h21 == _pht2Data_T_6 ? pht_2_33 : _GEN_160; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_162 = 6'h22 == _pht2Data_T_6 ? pht_2_34 : _GEN_161; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_163 = 6'h23 == _pht2Data_T_6 ? pht_2_35 : _GEN_162; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_164 = 6'h24 == _pht2Data_T_6 ? pht_2_36 : _GEN_163; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_165 = 6'h25 == _pht2Data_T_6 ? pht_2_37 : _GEN_164; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_166 = 6'h26 == _pht2Data_T_6 ? pht_2_38 : _GEN_165; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_167 = 6'h27 == _pht2Data_T_6 ? pht_2_39 : _GEN_166; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_168 = 6'h28 == _pht2Data_T_6 ? pht_2_40 : _GEN_167; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_169 = 6'h29 == _pht2Data_T_6 ? pht_2_41 : _GEN_168; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_170 = 6'h2a == _pht2Data_T_6 ? pht_2_42 : _GEN_169; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_171 = 6'h2b == _pht2Data_T_6 ? pht_2_43 : _GEN_170; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_172 = 6'h2c == _pht2Data_T_6 ? pht_2_44 : _GEN_171; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_173 = 6'h2d == _pht2Data_T_6 ? pht_2_45 : _GEN_172; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_174 = 6'h2e == _pht2Data_T_6 ? pht_2_46 : _GEN_173; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_175 = 6'h2f == _pht2Data_T_6 ? pht_2_47 : _GEN_174; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_176 = 6'h30 == _pht2Data_T_6 ? pht_2_48 : _GEN_175; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_177 = 6'h31 == _pht2Data_T_6 ? pht_2_49 : _GEN_176; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_178 = 6'h32 == _pht2Data_T_6 ? pht_2_50 : _GEN_177; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_179 = 6'h33 == _pht2Data_T_6 ? pht_2_51 : _GEN_178; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_180 = 6'h34 == _pht2Data_T_6 ? pht_2_52 : _GEN_179; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_181 = 6'h35 == _pht2Data_T_6 ? pht_2_53 : _GEN_180; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_182 = 6'h36 == _pht2Data_T_6 ? pht_2_54 : _GEN_181; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_183 = 6'h37 == _pht2Data_T_6 ? pht_2_55 : _GEN_182; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_184 = 6'h38 == _pht2Data_T_6 ? pht_2_56 : _GEN_183; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_185 = 6'h39 == _pht2Data_T_6 ? pht_2_57 : _GEN_184; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_186 = 6'h3a == _pht2Data_T_6 ? pht_2_58 : _GEN_185; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_187 = 6'h3b == _pht2Data_T_6 ? pht_2_59 : _GEN_186; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_188 = 6'h3c == _pht2Data_T_6 ? pht_2_60 : _GEN_187; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_189 = 6'h3d == _pht2Data_T_6 ? pht_2_61 : _GEN_188; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_190 = 6'h3e == _pht2Data_T_6 ? pht_2_62 : _GEN_189; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_191 = 6'h3f == _pht2Data_T_6 ? pht_2_63 : _GEN_190; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_193 = 6'h1 == p1Addr ? pht_1_1 : pht_1_0; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_194 = 6'h2 == p1Addr ? pht_1_2 : _GEN_193; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_195 = 6'h3 == p1Addr ? pht_1_3 : _GEN_194; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_196 = 6'h4 == p1Addr ? pht_1_4 : _GEN_195; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_197 = 6'h5 == p1Addr ? pht_1_5 : _GEN_196; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_198 = 6'h6 == p1Addr ? pht_1_6 : _GEN_197; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_199 = 6'h7 == p1Addr ? pht_1_7 : _GEN_198; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_200 = 6'h8 == p1Addr ? pht_1_8 : _GEN_199; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_201 = 6'h9 == p1Addr ? pht_1_9 : _GEN_200; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_202 = 6'ha == p1Addr ? pht_1_10 : _GEN_201; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_203 = 6'hb == p1Addr ? pht_1_11 : _GEN_202; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_204 = 6'hc == p1Addr ? pht_1_12 : _GEN_203; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_205 = 6'hd == p1Addr ? pht_1_13 : _GEN_204; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_206 = 6'he == p1Addr ? pht_1_14 : _GEN_205; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_207 = 6'hf == p1Addr ? pht_1_15 : _GEN_206; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_208 = 6'h10 == p1Addr ? pht_1_16 : _GEN_207; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_209 = 6'h11 == p1Addr ? pht_1_17 : _GEN_208; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_210 = 6'h12 == p1Addr ? pht_1_18 : _GEN_209; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_211 = 6'h13 == p1Addr ? pht_1_19 : _GEN_210; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_212 = 6'h14 == p1Addr ? pht_1_20 : _GEN_211; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_213 = 6'h15 == p1Addr ? pht_1_21 : _GEN_212; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_214 = 6'h16 == p1Addr ? pht_1_22 : _GEN_213; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_215 = 6'h17 == p1Addr ? pht_1_23 : _GEN_214; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_216 = 6'h18 == p1Addr ? pht_1_24 : _GEN_215; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_217 = 6'h19 == p1Addr ? pht_1_25 : _GEN_216; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_218 = 6'h1a == p1Addr ? pht_1_26 : _GEN_217; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_219 = 6'h1b == p1Addr ? pht_1_27 : _GEN_218; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_220 = 6'h1c == p1Addr ? pht_1_28 : _GEN_219; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_221 = 6'h1d == p1Addr ? pht_1_29 : _GEN_220; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_222 = 6'h1e == p1Addr ? pht_1_30 : _GEN_221; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_223 = 6'h1f == p1Addr ? pht_1_31 : _GEN_222; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_224 = 6'h20 == p1Addr ? pht_1_32 : _GEN_223; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_225 = 6'h21 == p1Addr ? pht_1_33 : _GEN_224; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_226 = 6'h22 == p1Addr ? pht_1_34 : _GEN_225; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_227 = 6'h23 == p1Addr ? pht_1_35 : _GEN_226; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_228 = 6'h24 == p1Addr ? pht_1_36 : _GEN_227; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_229 = 6'h25 == p1Addr ? pht_1_37 : _GEN_228; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_230 = 6'h26 == p1Addr ? pht_1_38 : _GEN_229; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_231 = 6'h27 == p1Addr ? pht_1_39 : _GEN_230; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_232 = 6'h28 == p1Addr ? pht_1_40 : _GEN_231; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_233 = 6'h29 == p1Addr ? pht_1_41 : _GEN_232; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_234 = 6'h2a == p1Addr ? pht_1_42 : _GEN_233; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_235 = 6'h2b == p1Addr ? pht_1_43 : _GEN_234; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_236 = 6'h2c == p1Addr ? pht_1_44 : _GEN_235; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_237 = 6'h2d == p1Addr ? pht_1_45 : _GEN_236; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_238 = 6'h2e == p1Addr ? pht_1_46 : _GEN_237; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_239 = 6'h2f == p1Addr ? pht_1_47 : _GEN_238; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_240 = 6'h30 == p1Addr ? pht_1_48 : _GEN_239; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_241 = 6'h31 == p1Addr ? pht_1_49 : _GEN_240; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_242 = 6'h32 == p1Addr ? pht_1_50 : _GEN_241; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_243 = 6'h33 == p1Addr ? pht_1_51 : _GEN_242; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_244 = 6'h34 == p1Addr ? pht_1_52 : _GEN_243; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_245 = 6'h35 == p1Addr ? pht_1_53 : _GEN_244; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_246 = 6'h36 == p1Addr ? pht_1_54 : _GEN_245; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_247 = 6'h37 == p1Addr ? pht_1_55 : _GEN_246; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_248 = 6'h38 == p1Addr ? pht_1_56 : _GEN_247; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_249 = 6'h39 == p1Addr ? pht_1_57 : _GEN_248; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_250 = 6'h3a == p1Addr ? pht_1_58 : _GEN_249; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_251 = 6'h3b == p1Addr ? pht_1_59 : _GEN_250; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_252 = 6'h3c == p1Addr ? pht_1_60 : _GEN_251; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_253 = 6'h3d == p1Addr ? pht_1_61 : _GEN_252; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_254 = 6'h3e == p1Addr ? pht_1_62 : _GEN_253; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] _GEN_255 = 6'h3f == p1Addr ? pht_1_63 : _GEN_254; // @[bht_btb.scala 129:{23,23}]
  wire [1:0] phtData = _GEN_127[1] ? _GEN_191 : _GEN_255; // @[bht_btb.scala 129:23]
  wire [5:0] reqIndex = io_pc[9:4]; // @[bht_btb.scala 132:25]
  wire  _btbHit_T = io_valid & io_takenPre; // @[bht_btb.scala 133:27]
  wire  _GEN_257 = 6'h1 == reqIndex ? btbV_1 : btbV_0; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_258 = 6'h2 == reqIndex ? btbV_2 : _GEN_257; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_259 = 6'h3 == reqIndex ? btbV_3 : _GEN_258; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_260 = 6'h4 == reqIndex ? btbV_4 : _GEN_259; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_261 = 6'h5 == reqIndex ? btbV_5 : _GEN_260; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_262 = 6'h6 == reqIndex ? btbV_6 : _GEN_261; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_263 = 6'h7 == reqIndex ? btbV_7 : _GEN_262; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_264 = 6'h8 == reqIndex ? btbV_8 : _GEN_263; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_265 = 6'h9 == reqIndex ? btbV_9 : _GEN_264; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_266 = 6'ha == reqIndex ? btbV_10 : _GEN_265; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_267 = 6'hb == reqIndex ? btbV_11 : _GEN_266; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_268 = 6'hc == reqIndex ? btbV_12 : _GEN_267; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_269 = 6'hd == reqIndex ? btbV_13 : _GEN_268; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_270 = 6'he == reqIndex ? btbV_14 : _GEN_269; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_271 = 6'hf == reqIndex ? btbV_15 : _GEN_270; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_272 = 6'h10 == reqIndex ? btbV_16 : _GEN_271; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_273 = 6'h11 == reqIndex ? btbV_17 : _GEN_272; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_274 = 6'h12 == reqIndex ? btbV_18 : _GEN_273; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_275 = 6'h13 == reqIndex ? btbV_19 : _GEN_274; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_276 = 6'h14 == reqIndex ? btbV_20 : _GEN_275; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_277 = 6'h15 == reqIndex ? btbV_21 : _GEN_276; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_278 = 6'h16 == reqIndex ? btbV_22 : _GEN_277; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_279 = 6'h17 == reqIndex ? btbV_23 : _GEN_278; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_280 = 6'h18 == reqIndex ? btbV_24 : _GEN_279; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_281 = 6'h19 == reqIndex ? btbV_25 : _GEN_280; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_282 = 6'h1a == reqIndex ? btbV_26 : _GEN_281; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_283 = 6'h1b == reqIndex ? btbV_27 : _GEN_282; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_284 = 6'h1c == reqIndex ? btbV_28 : _GEN_283; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_285 = 6'h1d == reqIndex ? btbV_29 : _GEN_284; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_286 = 6'h1e == reqIndex ? btbV_30 : _GEN_285; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_287 = 6'h1f == reqIndex ? btbV_31 : _GEN_286; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_288 = 6'h20 == reqIndex ? btbV_32 : _GEN_287; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_289 = 6'h21 == reqIndex ? btbV_33 : _GEN_288; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_290 = 6'h22 == reqIndex ? btbV_34 : _GEN_289; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_291 = 6'h23 == reqIndex ? btbV_35 : _GEN_290; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_292 = 6'h24 == reqIndex ? btbV_36 : _GEN_291; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_293 = 6'h25 == reqIndex ? btbV_37 : _GEN_292; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_294 = 6'h26 == reqIndex ? btbV_38 : _GEN_293; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_295 = 6'h27 == reqIndex ? btbV_39 : _GEN_294; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_296 = 6'h28 == reqIndex ? btbV_40 : _GEN_295; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_297 = 6'h29 == reqIndex ? btbV_41 : _GEN_296; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_298 = 6'h2a == reqIndex ? btbV_42 : _GEN_297; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_299 = 6'h2b == reqIndex ? btbV_43 : _GEN_298; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_300 = 6'h2c == reqIndex ? btbV_44 : _GEN_299; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_301 = 6'h2d == reqIndex ? btbV_45 : _GEN_300; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_302 = 6'h2e == reqIndex ? btbV_46 : _GEN_301; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_303 = 6'h2f == reqIndex ? btbV_47 : _GEN_302; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_304 = 6'h30 == reqIndex ? btbV_48 : _GEN_303; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_305 = 6'h31 == reqIndex ? btbV_49 : _GEN_304; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_306 = 6'h32 == reqIndex ? btbV_50 : _GEN_305; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_307 = 6'h33 == reqIndex ? btbV_51 : _GEN_306; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_308 = 6'h34 == reqIndex ? btbV_52 : _GEN_307; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_309 = 6'h35 == reqIndex ? btbV_53 : _GEN_308; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_310 = 6'h36 == reqIndex ? btbV_54 : _GEN_309; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_311 = 6'h37 == reqIndex ? btbV_55 : _GEN_310; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_312 = 6'h38 == reqIndex ? btbV_56 : _GEN_311; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_313 = 6'h39 == reqIndex ? btbV_57 : _GEN_312; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_314 = 6'h3a == reqIndex ? btbV_58 : _GEN_313; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_315 = 6'h3b == reqIndex ? btbV_59 : _GEN_314; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_316 = 6'h3c == reqIndex ? btbV_60 : _GEN_315; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_317 = 6'h3d == reqIndex ? btbV_61 : _GEN_316; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_318 = 6'h3e == reqIndex ? btbV_62 : _GEN_317; // @[bht_btb.scala 133:{42,42}]
  wire  _GEN_319 = 6'h3f == reqIndex ? btbV_63 : _GEN_318; // @[bht_btb.scala 133:{42,42}]
  wire [5:0] _GEN_321 = 6'h1 == reqIndex ? btbTag_1 : btbTag_0; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_322 = 6'h2 == reqIndex ? btbTag_2 : _GEN_321; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_323 = 6'h3 == reqIndex ? btbTag_3 : _GEN_322; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_324 = 6'h4 == reqIndex ? btbTag_4 : _GEN_323; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_325 = 6'h5 == reqIndex ? btbTag_5 : _GEN_324; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_326 = 6'h6 == reqIndex ? btbTag_6 : _GEN_325; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_327 = 6'h7 == reqIndex ? btbTag_7 : _GEN_326; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_328 = 6'h8 == reqIndex ? btbTag_8 : _GEN_327; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_329 = 6'h9 == reqIndex ? btbTag_9 : _GEN_328; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_330 = 6'ha == reqIndex ? btbTag_10 : _GEN_329; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_331 = 6'hb == reqIndex ? btbTag_11 : _GEN_330; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_332 = 6'hc == reqIndex ? btbTag_12 : _GEN_331; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_333 = 6'hd == reqIndex ? btbTag_13 : _GEN_332; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_334 = 6'he == reqIndex ? btbTag_14 : _GEN_333; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_335 = 6'hf == reqIndex ? btbTag_15 : _GEN_334; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_336 = 6'h10 == reqIndex ? btbTag_16 : _GEN_335; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_337 = 6'h11 == reqIndex ? btbTag_17 : _GEN_336; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_338 = 6'h12 == reqIndex ? btbTag_18 : _GEN_337; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_339 = 6'h13 == reqIndex ? btbTag_19 : _GEN_338; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_340 = 6'h14 == reqIndex ? btbTag_20 : _GEN_339; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_341 = 6'h15 == reqIndex ? btbTag_21 : _GEN_340; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_342 = 6'h16 == reqIndex ? btbTag_22 : _GEN_341; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_343 = 6'h17 == reqIndex ? btbTag_23 : _GEN_342; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_344 = 6'h18 == reqIndex ? btbTag_24 : _GEN_343; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_345 = 6'h19 == reqIndex ? btbTag_25 : _GEN_344; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_346 = 6'h1a == reqIndex ? btbTag_26 : _GEN_345; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_347 = 6'h1b == reqIndex ? btbTag_27 : _GEN_346; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_348 = 6'h1c == reqIndex ? btbTag_28 : _GEN_347; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_349 = 6'h1d == reqIndex ? btbTag_29 : _GEN_348; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_350 = 6'h1e == reqIndex ? btbTag_30 : _GEN_349; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_351 = 6'h1f == reqIndex ? btbTag_31 : _GEN_350; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_352 = 6'h20 == reqIndex ? btbTag_32 : _GEN_351; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_353 = 6'h21 == reqIndex ? btbTag_33 : _GEN_352; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_354 = 6'h22 == reqIndex ? btbTag_34 : _GEN_353; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_355 = 6'h23 == reqIndex ? btbTag_35 : _GEN_354; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_356 = 6'h24 == reqIndex ? btbTag_36 : _GEN_355; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_357 = 6'h25 == reqIndex ? btbTag_37 : _GEN_356; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_358 = 6'h26 == reqIndex ? btbTag_38 : _GEN_357; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_359 = 6'h27 == reqIndex ? btbTag_39 : _GEN_358; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_360 = 6'h28 == reqIndex ? btbTag_40 : _GEN_359; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_361 = 6'h29 == reqIndex ? btbTag_41 : _GEN_360; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_362 = 6'h2a == reqIndex ? btbTag_42 : _GEN_361; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_363 = 6'h2b == reqIndex ? btbTag_43 : _GEN_362; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_364 = 6'h2c == reqIndex ? btbTag_44 : _GEN_363; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_365 = 6'h2d == reqIndex ? btbTag_45 : _GEN_364; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_366 = 6'h2e == reqIndex ? btbTag_46 : _GEN_365; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_367 = 6'h2f == reqIndex ? btbTag_47 : _GEN_366; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_368 = 6'h30 == reqIndex ? btbTag_48 : _GEN_367; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_369 = 6'h31 == reqIndex ? btbTag_49 : _GEN_368; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_370 = 6'h32 == reqIndex ? btbTag_50 : _GEN_369; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_371 = 6'h33 == reqIndex ? btbTag_51 : _GEN_370; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_372 = 6'h34 == reqIndex ? btbTag_52 : _GEN_371; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_373 = 6'h35 == reqIndex ? btbTag_53 : _GEN_372; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_374 = 6'h36 == reqIndex ? btbTag_54 : _GEN_373; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_375 = 6'h37 == reqIndex ? btbTag_55 : _GEN_374; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_376 = 6'h38 == reqIndex ? btbTag_56 : _GEN_375; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_377 = 6'h39 == reqIndex ? btbTag_57 : _GEN_376; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_378 = 6'h3a == reqIndex ? btbTag_58 : _GEN_377; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_379 = 6'h3b == reqIndex ? btbTag_59 : _GEN_378; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_380 = 6'h3c == reqIndex ? btbTag_60 : _GEN_379; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_381 = 6'h3d == reqIndex ? btbTag_61 : _GEN_380; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_382 = 6'h3e == reqIndex ? btbTag_62 : _GEN_381; // @[bht_btb.scala 133:{81,81}]
  wire [5:0] _GEN_383 = 6'h3f == reqIndex ? btbTag_63 : _GEN_382; // @[bht_btb.scala 133:{81,81}]
  wire  btbHit = io_valid & io_takenPre & _GEN_319 & _GEN_383 == _p1Addr_T_5; // @[bht_btb.scala 133:60]
  wire [31:0] _io_takenPrePC_T_2 = io_op1 + io_op2; // @[bht_btb.scala 140:50]
  wire [2:0] _GEN_385 = 6'h1 == reqIndex ? btbMeta_1 : btbMeta_0; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_386 = 6'h2 == reqIndex ? btbMeta_2 : _GEN_385; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_387 = 6'h3 == reqIndex ? btbMeta_3 : _GEN_386; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_388 = 6'h4 == reqIndex ? btbMeta_4 : _GEN_387; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_389 = 6'h5 == reqIndex ? btbMeta_5 : _GEN_388; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_390 = 6'h6 == reqIndex ? btbMeta_6 : _GEN_389; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_391 = 6'h7 == reqIndex ? btbMeta_7 : _GEN_390; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_392 = 6'h8 == reqIndex ? btbMeta_8 : _GEN_391; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_393 = 6'h9 == reqIndex ? btbMeta_9 : _GEN_392; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_394 = 6'ha == reqIndex ? btbMeta_10 : _GEN_393; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_395 = 6'hb == reqIndex ? btbMeta_11 : _GEN_394; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_396 = 6'hc == reqIndex ? btbMeta_12 : _GEN_395; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_397 = 6'hd == reqIndex ? btbMeta_13 : _GEN_396; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_398 = 6'he == reqIndex ? btbMeta_14 : _GEN_397; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_399 = 6'hf == reqIndex ? btbMeta_15 : _GEN_398; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_400 = 6'h10 == reqIndex ? btbMeta_16 : _GEN_399; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_401 = 6'h11 == reqIndex ? btbMeta_17 : _GEN_400; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_402 = 6'h12 == reqIndex ? btbMeta_18 : _GEN_401; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_403 = 6'h13 == reqIndex ? btbMeta_19 : _GEN_402; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_404 = 6'h14 == reqIndex ? btbMeta_20 : _GEN_403; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_405 = 6'h15 == reqIndex ? btbMeta_21 : _GEN_404; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_406 = 6'h16 == reqIndex ? btbMeta_22 : _GEN_405; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_407 = 6'h17 == reqIndex ? btbMeta_23 : _GEN_406; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_408 = 6'h18 == reqIndex ? btbMeta_24 : _GEN_407; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_409 = 6'h19 == reqIndex ? btbMeta_25 : _GEN_408; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_410 = 6'h1a == reqIndex ? btbMeta_26 : _GEN_409; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_411 = 6'h1b == reqIndex ? btbMeta_27 : _GEN_410; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_412 = 6'h1c == reqIndex ? btbMeta_28 : _GEN_411; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_413 = 6'h1d == reqIndex ? btbMeta_29 : _GEN_412; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_414 = 6'h1e == reqIndex ? btbMeta_30 : _GEN_413; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_415 = 6'h1f == reqIndex ? btbMeta_31 : _GEN_414; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_416 = 6'h20 == reqIndex ? btbMeta_32 : _GEN_415; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_417 = 6'h21 == reqIndex ? btbMeta_33 : _GEN_416; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_418 = 6'h22 == reqIndex ? btbMeta_34 : _GEN_417; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_419 = 6'h23 == reqIndex ? btbMeta_35 : _GEN_418; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_420 = 6'h24 == reqIndex ? btbMeta_36 : _GEN_419; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_421 = 6'h25 == reqIndex ? btbMeta_37 : _GEN_420; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_422 = 6'h26 == reqIndex ? btbMeta_38 : _GEN_421; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_423 = 6'h27 == reqIndex ? btbMeta_39 : _GEN_422; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_424 = 6'h28 == reqIndex ? btbMeta_40 : _GEN_423; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_425 = 6'h29 == reqIndex ? btbMeta_41 : _GEN_424; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_426 = 6'h2a == reqIndex ? btbMeta_42 : _GEN_425; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_427 = 6'h2b == reqIndex ? btbMeta_43 : _GEN_426; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_428 = 6'h2c == reqIndex ? btbMeta_44 : _GEN_427; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_429 = 6'h2d == reqIndex ? btbMeta_45 : _GEN_428; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_430 = 6'h2e == reqIndex ? btbMeta_46 : _GEN_429; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_431 = 6'h2f == reqIndex ? btbMeta_47 : _GEN_430; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_432 = 6'h30 == reqIndex ? btbMeta_48 : _GEN_431; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_433 = 6'h31 == reqIndex ? btbMeta_49 : _GEN_432; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_434 = 6'h32 == reqIndex ? btbMeta_50 : _GEN_433; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_435 = 6'h33 == reqIndex ? btbMeta_51 : _GEN_434; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_436 = 6'h34 == reqIndex ? btbMeta_52 : _GEN_435; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_437 = 6'h35 == reqIndex ? btbMeta_53 : _GEN_436; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_438 = 6'h36 == reqIndex ? btbMeta_54 : _GEN_437; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_439 = 6'h37 == reqIndex ? btbMeta_55 : _GEN_438; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_440 = 6'h38 == reqIndex ? btbMeta_56 : _GEN_439; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_441 = 6'h39 == reqIndex ? btbMeta_57 : _GEN_440; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_442 = 6'h3a == reqIndex ? btbMeta_58 : _GEN_441; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_443 = 6'h3b == reqIndex ? btbMeta_59 : _GEN_442; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_444 = 6'h3c == reqIndex ? btbMeta_60 : _GEN_443; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_445 = 6'h3d == reqIndex ? btbMeta_61 : _GEN_444; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_446 = 6'h3e == reqIndex ? btbMeta_62 : _GEN_445; // @[bht_btb.scala 140:{26,26}]
  wire [2:0] _GEN_447 = 6'h3f == reqIndex ? btbMeta_63 : _GEN_446; // @[bht_btb.scala 140:{26,26}]
  wire [31:0] _io_takenPrePC_T_3 = btbHit ? {{29'd0}, _GEN_447} : _io_takenPrePC_T_2; // @[bht_btb.scala 140:26]
  reg  io_ready_REG; // @[bht_btb.scala 144:24]
  wire  bhtWAddr_hash0 = io_takenPC[2] ^ (io_takenPC[8] ^ io_takenPC[13]); // @[bht_btb.scala 78:27]
  wire  bhtWAddr_hash1 = io_takenPC[8] ^ io_takenPC[9] ^ io_takenPC[3]; // @[bht_btb.scala 79:39]
  wire  bhtWAddr_hash2 = io_takenPC[4] ^ (io_takenPC[10] ^ io_takenPC[9]); // @[bht_btb.scala 80:27]
  wire  bhtWAddr_hash3 = io_takenPC[5] ^ (io_takenPC[11] ^ io_takenPC[10]); // @[bht_btb.scala 81:27]
  wire  bhtWAddr_hash4 = io_takenPC[6] ^ (io_takenPC[12] ^ io_takenPC[11]); // @[bht_btb.scala 82:27]
  wire  bhtWAddr_hash5 = io_takenPC[7] ^ (io_takenPC[13] ^ io_takenPC[12]); // @[bht_btb.scala 83:27]
  wire [5:0] bhtWAddr = {bhtWAddr_hash5,bhtWAddr_hash4,bhtWAddr_hash3,bhtWAddr_hash2,bhtWAddr_hash1,bhtWAddr_hash0}; // @[bht_btb.scala 84:49]
  wire [5:0] pht1WAddr = bhtWAddr ^ ghr; // @[bht_btb.scala 105:77]
  wire [5:0] _GEN_449 = 6'h1 == bhtWAddr ? bht_1 : bht_0; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_450 = 6'h2 == bhtWAddr ? bht_2 : _GEN_449; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_451 = 6'h3 == bhtWAddr ? bht_3 : _GEN_450; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_452 = 6'h4 == bhtWAddr ? bht_4 : _GEN_451; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_453 = 6'h5 == bhtWAddr ? bht_5 : _GEN_452; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_454 = 6'h6 == bhtWAddr ? bht_6 : _GEN_453; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_455 = 6'h7 == bhtWAddr ? bht_7 : _GEN_454; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_456 = 6'h8 == bhtWAddr ? bht_8 : _GEN_455; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_457 = 6'h9 == bhtWAddr ? bht_9 : _GEN_456; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_458 = 6'ha == bhtWAddr ? bht_10 : _GEN_457; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_459 = 6'hb == bhtWAddr ? bht_11 : _GEN_458; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_460 = 6'hc == bhtWAddr ? bht_12 : _GEN_459; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_461 = 6'hd == bhtWAddr ? bht_13 : _GEN_460; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_462 = 6'he == bhtWAddr ? bht_14 : _GEN_461; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_463 = 6'hf == bhtWAddr ? bht_15 : _GEN_462; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_464 = 6'h10 == bhtWAddr ? bht_16 : _GEN_463; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_465 = 6'h11 == bhtWAddr ? bht_17 : _GEN_464; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_466 = 6'h12 == bhtWAddr ? bht_18 : _GEN_465; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_467 = 6'h13 == bhtWAddr ? bht_19 : _GEN_466; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_468 = 6'h14 == bhtWAddr ? bht_20 : _GEN_467; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_469 = 6'h15 == bhtWAddr ? bht_21 : _GEN_468; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_470 = 6'h16 == bhtWAddr ? bht_22 : _GEN_469; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_471 = 6'h17 == bhtWAddr ? bht_23 : _GEN_470; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_472 = 6'h18 == bhtWAddr ? bht_24 : _GEN_471; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_473 = 6'h19 == bhtWAddr ? bht_25 : _GEN_472; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_474 = 6'h1a == bhtWAddr ? bht_26 : _GEN_473; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_475 = 6'h1b == bhtWAddr ? bht_27 : _GEN_474; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_476 = 6'h1c == bhtWAddr ? bht_28 : _GEN_475; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_477 = 6'h1d == bhtWAddr ? bht_29 : _GEN_476; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_478 = 6'h1e == bhtWAddr ? bht_30 : _GEN_477; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_479 = 6'h1f == bhtWAddr ? bht_31 : _GEN_478; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_480 = 6'h20 == bhtWAddr ? bht_32 : _GEN_479; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_481 = 6'h21 == bhtWAddr ? bht_33 : _GEN_480; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_482 = 6'h22 == bhtWAddr ? bht_34 : _GEN_481; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_483 = 6'h23 == bhtWAddr ? bht_35 : _GEN_482; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_484 = 6'h24 == bhtWAddr ? bht_36 : _GEN_483; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_485 = 6'h25 == bhtWAddr ? bht_37 : _GEN_484; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_486 = 6'h26 == bhtWAddr ? bht_38 : _GEN_485; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_487 = 6'h27 == bhtWAddr ? bht_39 : _GEN_486; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_488 = 6'h28 == bhtWAddr ? bht_40 : _GEN_487; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_489 = 6'h29 == bhtWAddr ? bht_41 : _GEN_488; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_490 = 6'h2a == bhtWAddr ? bht_42 : _GEN_489; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_491 = 6'h2b == bhtWAddr ? bht_43 : _GEN_490; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_492 = 6'h2c == bhtWAddr ? bht_44 : _GEN_491; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_493 = 6'h2d == bhtWAddr ? bht_45 : _GEN_492; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_494 = 6'h2e == bhtWAddr ? bht_46 : _GEN_493; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_495 = 6'h2f == bhtWAddr ? bht_47 : _GEN_494; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_496 = 6'h30 == bhtWAddr ? bht_48 : _GEN_495; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_497 = 6'h31 == bhtWAddr ? bht_49 : _GEN_496; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_498 = 6'h32 == bhtWAddr ? bht_50 : _GEN_497; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_499 = 6'h33 == bhtWAddr ? bht_51 : _GEN_498; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_500 = 6'h34 == bhtWAddr ? bht_52 : _GEN_499; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_501 = 6'h35 == bhtWAddr ? bht_53 : _GEN_500; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_502 = 6'h36 == bhtWAddr ? bht_54 : _GEN_501; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_503 = 6'h37 == bhtWAddr ? bht_55 : _GEN_502; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_504 = 6'h38 == bhtWAddr ? bht_56 : _GEN_503; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_505 = 6'h39 == bhtWAddr ? bht_57 : _GEN_504; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_506 = 6'h3a == bhtWAddr ? bht_58 : _GEN_505; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_507 = 6'h3b == bhtWAddr ? bht_59 : _GEN_506; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_508 = 6'h3c == bhtWAddr ? bht_60 : _GEN_507; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_509 = 6'h3d == bhtWAddr ? bht_61 : _GEN_508; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_510 = 6'h3e == bhtWAddr ? bht_62 : _GEN_509; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] _GEN_511 = 6'h3f == bhtWAddr ? bht_63 : _GEN_510; // @[bht_btb.scala 105:{77,77}]
  wire [5:0] pht2WAddr = bhtWAddr ^ _GEN_511; // @[bht_btb.scala 105:77]
  wire [1:0] _GEN_513 = 6'h1 == pht1WAddr ? pht_1_1 : pht_1_0; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_514 = 6'h2 == pht1WAddr ? pht_1_2 : _GEN_513; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_515 = 6'h3 == pht1WAddr ? pht_1_3 : _GEN_514; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_516 = 6'h4 == pht1WAddr ? pht_1_4 : _GEN_515; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_517 = 6'h5 == pht1WAddr ? pht_1_5 : _GEN_516; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_518 = 6'h6 == pht1WAddr ? pht_1_6 : _GEN_517; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_519 = 6'h7 == pht1WAddr ? pht_1_7 : _GEN_518; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_520 = 6'h8 == pht1WAddr ? pht_1_8 : _GEN_519; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_521 = 6'h9 == pht1WAddr ? pht_1_9 : _GEN_520; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_522 = 6'ha == pht1WAddr ? pht_1_10 : _GEN_521; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_523 = 6'hb == pht1WAddr ? pht_1_11 : _GEN_522; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_524 = 6'hc == pht1WAddr ? pht_1_12 : _GEN_523; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_525 = 6'hd == pht1WAddr ? pht_1_13 : _GEN_524; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_526 = 6'he == pht1WAddr ? pht_1_14 : _GEN_525; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_527 = 6'hf == pht1WAddr ? pht_1_15 : _GEN_526; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_528 = 6'h10 == pht1WAddr ? pht_1_16 : _GEN_527; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_529 = 6'h11 == pht1WAddr ? pht_1_17 : _GEN_528; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_530 = 6'h12 == pht1WAddr ? pht_1_18 : _GEN_529; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_531 = 6'h13 == pht1WAddr ? pht_1_19 : _GEN_530; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_532 = 6'h14 == pht1WAddr ? pht_1_20 : _GEN_531; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_533 = 6'h15 == pht1WAddr ? pht_1_21 : _GEN_532; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_534 = 6'h16 == pht1WAddr ? pht_1_22 : _GEN_533; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_535 = 6'h17 == pht1WAddr ? pht_1_23 : _GEN_534; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_536 = 6'h18 == pht1WAddr ? pht_1_24 : _GEN_535; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_537 = 6'h19 == pht1WAddr ? pht_1_25 : _GEN_536; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_538 = 6'h1a == pht1WAddr ? pht_1_26 : _GEN_537; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_539 = 6'h1b == pht1WAddr ? pht_1_27 : _GEN_538; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_540 = 6'h1c == pht1WAddr ? pht_1_28 : _GEN_539; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_541 = 6'h1d == pht1WAddr ? pht_1_29 : _GEN_540; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_542 = 6'h1e == pht1WAddr ? pht_1_30 : _GEN_541; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_543 = 6'h1f == pht1WAddr ? pht_1_31 : _GEN_542; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_544 = 6'h20 == pht1WAddr ? pht_1_32 : _GEN_543; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_545 = 6'h21 == pht1WAddr ? pht_1_33 : _GEN_544; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_546 = 6'h22 == pht1WAddr ? pht_1_34 : _GEN_545; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_547 = 6'h23 == pht1WAddr ? pht_1_35 : _GEN_546; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_548 = 6'h24 == pht1WAddr ? pht_1_36 : _GEN_547; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_549 = 6'h25 == pht1WAddr ? pht_1_37 : _GEN_548; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_550 = 6'h26 == pht1WAddr ? pht_1_38 : _GEN_549; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_551 = 6'h27 == pht1WAddr ? pht_1_39 : _GEN_550; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_552 = 6'h28 == pht1WAddr ? pht_1_40 : _GEN_551; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_553 = 6'h29 == pht1WAddr ? pht_1_41 : _GEN_552; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_554 = 6'h2a == pht1WAddr ? pht_1_42 : _GEN_553; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_555 = 6'h2b == pht1WAddr ? pht_1_43 : _GEN_554; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_556 = 6'h2c == pht1WAddr ? pht_1_44 : _GEN_555; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_557 = 6'h2d == pht1WAddr ? pht_1_45 : _GEN_556; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_558 = 6'h2e == pht1WAddr ? pht_1_46 : _GEN_557; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_559 = 6'h2f == pht1WAddr ? pht_1_47 : _GEN_558; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_560 = 6'h30 == pht1WAddr ? pht_1_48 : _GEN_559; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_561 = 6'h31 == pht1WAddr ? pht_1_49 : _GEN_560; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_562 = 6'h32 == pht1WAddr ? pht_1_50 : _GEN_561; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_563 = 6'h33 == pht1WAddr ? pht_1_51 : _GEN_562; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_564 = 6'h34 == pht1WAddr ? pht_1_52 : _GEN_563; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_565 = 6'h35 == pht1WAddr ? pht_1_53 : _GEN_564; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_566 = 6'h36 == pht1WAddr ? pht_1_54 : _GEN_565; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_567 = 6'h37 == pht1WAddr ? pht_1_55 : _GEN_566; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_568 = 6'h38 == pht1WAddr ? pht_1_56 : _GEN_567; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_569 = 6'h39 == pht1WAddr ? pht_1_57 : _GEN_568; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_570 = 6'h3a == pht1WAddr ? pht_1_58 : _GEN_569; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_571 = 6'h3b == pht1WAddr ? pht_1_59 : _GEN_570; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_572 = 6'h3c == pht1WAddr ? pht_1_60 : _GEN_571; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_573 = 6'h3d == pht1WAddr ? pht_1_61 : _GEN_572; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_574 = 6'h3e == pht1WAddr ? pht_1_62 : _GEN_573; // @[bht_btb.scala 157:{26,26}]
  wire [1:0] _GEN_575 = 6'h3f == pht1WAddr ? pht_1_63 : _GEN_574; // @[bht_btb.scala 157:{26,26}]
  wire  p1Suc = _GEN_575[1] == io_exTakenPre; // @[bht_btb.scala 157:39]
  wire [1:0] _GEN_577 = 6'h1 == pht2WAddr ? pht_2_1 : pht_2_0; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_578 = 6'h2 == pht2WAddr ? pht_2_2 : _GEN_577; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_579 = 6'h3 == pht2WAddr ? pht_2_3 : _GEN_578; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_580 = 6'h4 == pht2WAddr ? pht_2_4 : _GEN_579; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_581 = 6'h5 == pht2WAddr ? pht_2_5 : _GEN_580; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_582 = 6'h6 == pht2WAddr ? pht_2_6 : _GEN_581; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_583 = 6'h7 == pht2WAddr ? pht_2_7 : _GEN_582; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_584 = 6'h8 == pht2WAddr ? pht_2_8 : _GEN_583; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_585 = 6'h9 == pht2WAddr ? pht_2_9 : _GEN_584; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_586 = 6'ha == pht2WAddr ? pht_2_10 : _GEN_585; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_587 = 6'hb == pht2WAddr ? pht_2_11 : _GEN_586; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_588 = 6'hc == pht2WAddr ? pht_2_12 : _GEN_587; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_589 = 6'hd == pht2WAddr ? pht_2_13 : _GEN_588; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_590 = 6'he == pht2WAddr ? pht_2_14 : _GEN_589; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_591 = 6'hf == pht2WAddr ? pht_2_15 : _GEN_590; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_592 = 6'h10 == pht2WAddr ? pht_2_16 : _GEN_591; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_593 = 6'h11 == pht2WAddr ? pht_2_17 : _GEN_592; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_594 = 6'h12 == pht2WAddr ? pht_2_18 : _GEN_593; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_595 = 6'h13 == pht2WAddr ? pht_2_19 : _GEN_594; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_596 = 6'h14 == pht2WAddr ? pht_2_20 : _GEN_595; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_597 = 6'h15 == pht2WAddr ? pht_2_21 : _GEN_596; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_598 = 6'h16 == pht2WAddr ? pht_2_22 : _GEN_597; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_599 = 6'h17 == pht2WAddr ? pht_2_23 : _GEN_598; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_600 = 6'h18 == pht2WAddr ? pht_2_24 : _GEN_599; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_601 = 6'h19 == pht2WAddr ? pht_2_25 : _GEN_600; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_602 = 6'h1a == pht2WAddr ? pht_2_26 : _GEN_601; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_603 = 6'h1b == pht2WAddr ? pht_2_27 : _GEN_602; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_604 = 6'h1c == pht2WAddr ? pht_2_28 : _GEN_603; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_605 = 6'h1d == pht2WAddr ? pht_2_29 : _GEN_604; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_606 = 6'h1e == pht2WAddr ? pht_2_30 : _GEN_605; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_607 = 6'h1f == pht2WAddr ? pht_2_31 : _GEN_606; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_608 = 6'h20 == pht2WAddr ? pht_2_32 : _GEN_607; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_609 = 6'h21 == pht2WAddr ? pht_2_33 : _GEN_608; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_610 = 6'h22 == pht2WAddr ? pht_2_34 : _GEN_609; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_611 = 6'h23 == pht2WAddr ? pht_2_35 : _GEN_610; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_612 = 6'h24 == pht2WAddr ? pht_2_36 : _GEN_611; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_613 = 6'h25 == pht2WAddr ? pht_2_37 : _GEN_612; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_614 = 6'h26 == pht2WAddr ? pht_2_38 : _GEN_613; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_615 = 6'h27 == pht2WAddr ? pht_2_39 : _GEN_614; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_616 = 6'h28 == pht2WAddr ? pht_2_40 : _GEN_615; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_617 = 6'h29 == pht2WAddr ? pht_2_41 : _GEN_616; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_618 = 6'h2a == pht2WAddr ? pht_2_42 : _GEN_617; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_619 = 6'h2b == pht2WAddr ? pht_2_43 : _GEN_618; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_620 = 6'h2c == pht2WAddr ? pht_2_44 : _GEN_619; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_621 = 6'h2d == pht2WAddr ? pht_2_45 : _GEN_620; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_622 = 6'h2e == pht2WAddr ? pht_2_46 : _GEN_621; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_623 = 6'h2f == pht2WAddr ? pht_2_47 : _GEN_622; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_624 = 6'h30 == pht2WAddr ? pht_2_48 : _GEN_623; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_625 = 6'h31 == pht2WAddr ? pht_2_49 : _GEN_624; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_626 = 6'h32 == pht2WAddr ? pht_2_50 : _GEN_625; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_627 = 6'h33 == pht2WAddr ? pht_2_51 : _GEN_626; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_628 = 6'h34 == pht2WAddr ? pht_2_52 : _GEN_627; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_629 = 6'h35 == pht2WAddr ? pht_2_53 : _GEN_628; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_630 = 6'h36 == pht2WAddr ? pht_2_54 : _GEN_629; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_631 = 6'h37 == pht2WAddr ? pht_2_55 : _GEN_630; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_632 = 6'h38 == pht2WAddr ? pht_2_56 : _GEN_631; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_633 = 6'h39 == pht2WAddr ? pht_2_57 : _GEN_632; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_634 = 6'h3a == pht2WAddr ? pht_2_58 : _GEN_633; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_635 = 6'h3b == pht2WAddr ? pht_2_59 : _GEN_634; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_636 = 6'h3c == pht2WAddr ? pht_2_60 : _GEN_635; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_637 = 6'h3d == pht2WAddr ? pht_2_61 : _GEN_636; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_638 = 6'h3e == pht2WAddr ? pht_2_62 : _GEN_637; // @[bht_btb.scala 158:{26,26}]
  wire [1:0] _GEN_639 = 6'h3f == pht2WAddr ? pht_2_63 : _GEN_638; // @[bht_btb.scala 158:{26,26}]
  wire  p2Suc = _GEN_639[1] == io_exTakenPre; // @[bht_btb.scala 158:39]
  wire [1:0] pht0Choice = {p1Suc,p2Suc}; // @[bht_btb.scala 159:28]
  wire  _pht_0_T = pht0Choice == 2'h1; // @[bht_btb.scala 164:35]
  wire  _pht_0_T_3 = pht0Choice == 2'h2; // @[bht_btb.scala 166:38]
  wire  _pht_0_T_4 = pht0Choice == 2'h2 ? 1'h0 : 1'h1; // @[bht_btb.scala 166:26]
  wire [1:0] _pht_0_T_5 = _pht_0_T ? 2'h2 : {{1'd0}, _pht_0_T_4}; // @[bht_btb.scala 165:23]
  wire [1:0] _pht_0_T_8 = _pht_0_T ? 2'h3 : 2'h2; // @[bht_btb.scala 168:26]
  wire [1:0] _pht_0_T_9 = _pht_0_T_3 ? 2'h1 : _pht_0_T_8; // @[bht_btb.scala 167:23]
  wire [1:0] _pht_0_T_11 = _pht_0_T_3 ? 2'h2 : 2'h3; // @[bht_btb.scala 169:23]
  wire [1:0] _GEN_641 = 6'h1 == pht1WAddr ? pht_0_1 : pht_0_0; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_642 = 6'h2 == pht1WAddr ? pht_0_2 : _GEN_641; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_643 = 6'h3 == pht1WAddr ? pht_0_3 : _GEN_642; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_644 = 6'h4 == pht1WAddr ? pht_0_4 : _GEN_643; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_645 = 6'h5 == pht1WAddr ? pht_0_5 : _GEN_644; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_646 = 6'h6 == pht1WAddr ? pht_0_6 : _GEN_645; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_647 = 6'h7 == pht1WAddr ? pht_0_7 : _GEN_646; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_648 = 6'h8 == pht1WAddr ? pht_0_8 : _GEN_647; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_649 = 6'h9 == pht1WAddr ? pht_0_9 : _GEN_648; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_650 = 6'ha == pht1WAddr ? pht_0_10 : _GEN_649; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_651 = 6'hb == pht1WAddr ? pht_0_11 : _GEN_650; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_652 = 6'hc == pht1WAddr ? pht_0_12 : _GEN_651; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_653 = 6'hd == pht1WAddr ? pht_0_13 : _GEN_652; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_654 = 6'he == pht1WAddr ? pht_0_14 : _GEN_653; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_655 = 6'hf == pht1WAddr ? pht_0_15 : _GEN_654; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_656 = 6'h10 == pht1WAddr ? pht_0_16 : _GEN_655; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_657 = 6'h11 == pht1WAddr ? pht_0_17 : _GEN_656; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_658 = 6'h12 == pht1WAddr ? pht_0_18 : _GEN_657; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_659 = 6'h13 == pht1WAddr ? pht_0_19 : _GEN_658; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_660 = 6'h14 == pht1WAddr ? pht_0_20 : _GEN_659; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_661 = 6'h15 == pht1WAddr ? pht_0_21 : _GEN_660; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_662 = 6'h16 == pht1WAddr ? pht_0_22 : _GEN_661; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_663 = 6'h17 == pht1WAddr ? pht_0_23 : _GEN_662; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_664 = 6'h18 == pht1WAddr ? pht_0_24 : _GEN_663; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_665 = 6'h19 == pht1WAddr ? pht_0_25 : _GEN_664; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_666 = 6'h1a == pht1WAddr ? pht_0_26 : _GEN_665; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_667 = 6'h1b == pht1WAddr ? pht_0_27 : _GEN_666; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_668 = 6'h1c == pht1WAddr ? pht_0_28 : _GEN_667; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_669 = 6'h1d == pht1WAddr ? pht_0_29 : _GEN_668; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_670 = 6'h1e == pht1WAddr ? pht_0_30 : _GEN_669; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_671 = 6'h1f == pht1WAddr ? pht_0_31 : _GEN_670; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_672 = 6'h20 == pht1WAddr ? pht_0_32 : _GEN_671; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_673 = 6'h21 == pht1WAddr ? pht_0_33 : _GEN_672; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_674 = 6'h22 == pht1WAddr ? pht_0_34 : _GEN_673; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_675 = 6'h23 == pht1WAddr ? pht_0_35 : _GEN_674; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_676 = 6'h24 == pht1WAddr ? pht_0_36 : _GEN_675; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_677 = 6'h25 == pht1WAddr ? pht_0_37 : _GEN_676; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_678 = 6'h26 == pht1WAddr ? pht_0_38 : _GEN_677; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_679 = 6'h27 == pht1WAddr ? pht_0_39 : _GEN_678; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_680 = 6'h28 == pht1WAddr ? pht_0_40 : _GEN_679; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_681 = 6'h29 == pht1WAddr ? pht_0_41 : _GEN_680; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_682 = 6'h2a == pht1WAddr ? pht_0_42 : _GEN_681; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_683 = 6'h2b == pht1WAddr ? pht_0_43 : _GEN_682; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_684 = 6'h2c == pht1WAddr ? pht_0_44 : _GEN_683; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_685 = 6'h2d == pht1WAddr ? pht_0_45 : _GEN_684; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_686 = 6'h2e == pht1WAddr ? pht_0_46 : _GEN_685; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_687 = 6'h2f == pht1WAddr ? pht_0_47 : _GEN_686; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_688 = 6'h30 == pht1WAddr ? pht_0_48 : _GEN_687; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_689 = 6'h31 == pht1WAddr ? pht_0_49 : _GEN_688; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_690 = 6'h32 == pht1WAddr ? pht_0_50 : _GEN_689; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_691 = 6'h33 == pht1WAddr ? pht_0_51 : _GEN_690; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_692 = 6'h34 == pht1WAddr ? pht_0_52 : _GEN_691; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_693 = 6'h35 == pht1WAddr ? pht_0_53 : _GEN_692; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_694 = 6'h36 == pht1WAddr ? pht_0_54 : _GEN_693; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_695 = 6'h37 == pht1WAddr ? pht_0_55 : _GEN_694; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_696 = 6'h38 == pht1WAddr ? pht_0_56 : _GEN_695; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_697 = 6'h39 == pht1WAddr ? pht_0_57 : _GEN_696; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_698 = 6'h3a == pht1WAddr ? pht_0_58 : _GEN_697; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_699 = 6'h3b == pht1WAddr ? pht_0_59 : _GEN_698; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_700 = 6'h3c == pht1WAddr ? pht_0_60 : _GEN_699; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_701 = 6'h3d == pht1WAddr ? pht_0_61 : _GEN_700; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_702 = 6'h3e == pht1WAddr ? pht_0_62 : _GEN_701; // @[Mux.scala 81:{61,61}]
  wire [1:0] _GEN_703 = 6'h3f == pht1WAddr ? pht_0_63 : _GEN_702; // @[Mux.scala 81:{61,61}]
  wire [1:0] _pht_0_T_13 = 2'h1 == _GEN_703 ? _pht_0_T_5 : {{1'd0}, _pht_0_T}; // @[Mux.scala 81:58]
  wire [1:0] _pht_0_T_15 = 2'h2 == _GEN_703 ? _pht_0_T_9 : _pht_0_T_13; // @[Mux.scala 81:58]
  wire [1:0] _pht_1_T_1 = io_takenMiss ? 2'h2 : 2'h0; // @[bht_btb.scala 175:23]
  wire [1:0] _pht_1_T_2 = io_takenMiss ? 2'h1 : 2'h3; // @[bht_btb.scala 176:23]
  wire [1:0] _pht_1_T_3 = io_takenMiss ? 2'h2 : 2'h3; // @[bht_btb.scala 177:23]
  wire [1:0] _pht_1_T_5 = 2'h1 == _GEN_575 ? _pht_1_T_1 : {{1'd0}, io_takenMiss}; // @[Mux.scala 81:58]
  wire [1:0] _pht_1_T_7 = 2'h2 == _GEN_575 ? _pht_1_T_2 : _pht_1_T_5; // @[Mux.scala 81:58]
  wire [1:0] _pht_2_T_5 = 2'h1 == _GEN_639 ? _pht_1_T_1 : {{1'd0}, io_takenMiss}; // @[Mux.scala 81:58]
  wire [1:0] _pht_2_T_7 = 2'h2 == _GEN_639 ? _pht_1_T_2 : _pht_2_T_5; // @[Mux.scala 81:58]
  wire [5:0] _bht_T_1 = {_GEN_511[4:0],io_exTakenPre}; // @[bht_btb.scala 190:49]
  wire [5:0] _ghr_T_1 = {ghr[4:0],io_exTakenPre}; // @[bht_btb.scala 191:33]
  wire [5:0] upIndex = io_takenPC[9:4]; // @[bht_btb.scala 194:27]
  wire  _GEN_1217 = 6'h0 == upIndex | btbV_0; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1218 = 6'h1 == upIndex | btbV_1; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1219 = 6'h2 == upIndex | btbV_2; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1220 = 6'h3 == upIndex | btbV_3; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1221 = 6'h4 == upIndex | btbV_4; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1222 = 6'h5 == upIndex | btbV_5; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1223 = 6'h6 == upIndex | btbV_6; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1224 = 6'h7 == upIndex | btbV_7; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1225 = 6'h8 == upIndex | btbV_8; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1226 = 6'h9 == upIndex | btbV_9; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1227 = 6'ha == upIndex | btbV_10; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1228 = 6'hb == upIndex | btbV_11; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1229 = 6'hc == upIndex | btbV_12; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1230 = 6'hd == upIndex | btbV_13; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1231 = 6'he == upIndex | btbV_14; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1232 = 6'hf == upIndex | btbV_15; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1233 = 6'h10 == upIndex | btbV_16; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1234 = 6'h11 == upIndex | btbV_17; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1235 = 6'h12 == upIndex | btbV_18; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1236 = 6'h13 == upIndex | btbV_19; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1237 = 6'h14 == upIndex | btbV_20; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1238 = 6'h15 == upIndex | btbV_21; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1239 = 6'h16 == upIndex | btbV_22; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1240 = 6'h17 == upIndex | btbV_23; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1241 = 6'h18 == upIndex | btbV_24; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1242 = 6'h19 == upIndex | btbV_25; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1243 = 6'h1a == upIndex | btbV_26; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1244 = 6'h1b == upIndex | btbV_27; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1245 = 6'h1c == upIndex | btbV_28; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1246 = 6'h1d == upIndex | btbV_29; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1247 = 6'h1e == upIndex | btbV_30; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1248 = 6'h1f == upIndex | btbV_31; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1249 = 6'h20 == upIndex | btbV_32; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1250 = 6'h21 == upIndex | btbV_33; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1251 = 6'h22 == upIndex | btbV_34; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1252 = 6'h23 == upIndex | btbV_35; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1253 = 6'h24 == upIndex | btbV_36; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1254 = 6'h25 == upIndex | btbV_37; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1255 = 6'h26 == upIndex | btbV_38; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1256 = 6'h27 == upIndex | btbV_39; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1257 = 6'h28 == upIndex | btbV_40; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1258 = 6'h29 == upIndex | btbV_41; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1259 = 6'h2a == upIndex | btbV_42; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1260 = 6'h2b == upIndex | btbV_43; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1261 = 6'h2c == upIndex | btbV_44; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1262 = 6'h2d == upIndex | btbV_45; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1263 = 6'h2e == upIndex | btbV_46; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1264 = 6'h2f == upIndex | btbV_47; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1265 = 6'h30 == upIndex | btbV_48; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1266 = 6'h31 == upIndex | btbV_49; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1267 = 6'h32 == upIndex | btbV_50; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1268 = 6'h33 == upIndex | btbV_51; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1269 = 6'h34 == upIndex | btbV_52; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1270 = 6'h35 == upIndex | btbV_53; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1271 = 6'h36 == upIndex | btbV_54; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1272 = 6'h37 == upIndex | btbV_55; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1273 = 6'h38 == upIndex | btbV_56; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1274 = 6'h39 == upIndex | btbV_57; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1275 = 6'h3a == upIndex | btbV_58; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1276 = 6'h3b == upIndex | btbV_59; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1277 = 6'h3c == upIndex | btbV_60; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1278 = 6'h3d == upIndex | btbV_61; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1279 = 6'h3e == upIndex | btbV_62; // @[bht_btb.scala 197:{19,19} 120:23]
  wire  _GEN_1280 = 6'h3f == upIndex | btbV_63; // @[bht_btb.scala 197:{19,19} 120:23]
  assign io_takenPre = io_valid & phtData[1]; // @[bht_btb.scala 137:23]
  assign io_takenPrePC = _btbHit_T ? _io_takenPrePC_T_3 : 32'h0; // @[bht_btb.scala 139:25]
  assign io_ready = io_ready_REG; // @[bht_btb.scala 144:14]
  always @(posedge clock) begin
    if (reset) begin // @[bht_btb.scala 115:22]
      ghr <= 6'h0; // @[bht_btb.scala 115:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      ghr <= _ghr_T_1; // @[bht_btb.scala 191:11]
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_0 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h0 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_0 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_1 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h1 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_1 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_2 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h2 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_2 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_3 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h3 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_3 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_4 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h4 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_4 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_5 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h5 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_5 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_6 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h6 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_6 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_7 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h7 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_7 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_8 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h8 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_8 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_9 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h9 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_9 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_10 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'ha == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_10 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_11 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'hb == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_11 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_12 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'hc == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_12 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_13 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'hd == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_13 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_14 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'he == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_14 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_15 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'hf == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_15 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_16 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h10 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_16 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_17 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h11 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_17 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_18 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h12 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_18 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_19 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h13 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_19 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_20 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h14 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_20 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_21 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h15 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_21 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_22 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h16 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_22 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_23 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h17 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_23 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_24 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h18 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_24 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_25 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h19 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_25 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_26 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h1a == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_26 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_27 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h1b == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_27 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_28 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h1c == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_28 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_29 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h1d == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_29 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_30 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h1e == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_30 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_31 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h1f == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_31 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_32 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h20 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_32 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_33 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h21 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_33 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_34 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h22 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_34 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_35 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h23 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_35 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_36 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h24 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_36 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_37 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h25 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_37 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_38 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h26 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_38 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_39 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h27 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_39 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_40 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h28 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_40 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_41 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h29 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_41 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_42 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h2a == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_42 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_43 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h2b == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_43 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_44 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h2c == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_44 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_45 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h2d == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_45 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_46 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h2e == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_46 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_47 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h2f == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_47 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_48 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h30 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_48 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_49 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h31 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_49 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_50 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h32 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_50 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_51 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h33 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_51 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_52 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h34 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_52 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_53 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h35 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_53 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_54 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h36 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_54 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_55 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h37 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_55 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_56 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h38 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_56 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_57 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h39 == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_57 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_58 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h3a == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_58 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_59 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h3b == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_59 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_60 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h3c == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_60 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_61 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h3d == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_61 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_62 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h3e == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_62 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 116:22]
      bht_63 <= 6'h0; // @[bht_btb.scala 116:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 189:25]
      if (6'h3f == bhtWAddr) begin // @[bht_btb.scala 190:21]
        bht_63 <= _bht_T_1; // @[bht_btb.scala 190:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_0 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h0 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_0 <= _pht_0_T_11;
        end else begin
          pht_0_0 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_1 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h1 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_1 <= _pht_0_T_11;
        end else begin
          pht_0_1 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_2 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h2 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_2 <= _pht_0_T_11;
        end else begin
          pht_0_2 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_3 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h3 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_3 <= _pht_0_T_11;
        end else begin
          pht_0_3 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_4 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h4 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_4 <= _pht_0_T_11;
        end else begin
          pht_0_4 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_5 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h5 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_5 <= _pht_0_T_11;
        end else begin
          pht_0_5 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_6 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h6 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_6 <= _pht_0_T_11;
        end else begin
          pht_0_6 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_7 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h7 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_7 <= _pht_0_T_11;
        end else begin
          pht_0_7 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_8 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h8 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_8 <= _pht_0_T_11;
        end else begin
          pht_0_8 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_9 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h9 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_9 <= _pht_0_T_11;
        end else begin
          pht_0_9 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_10 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'ha == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_10 <= _pht_0_T_11;
        end else begin
          pht_0_10 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_11 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'hb == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_11 <= _pht_0_T_11;
        end else begin
          pht_0_11 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_12 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'hc == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_12 <= _pht_0_T_11;
        end else begin
          pht_0_12 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_13 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'hd == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_13 <= _pht_0_T_11;
        end else begin
          pht_0_13 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_14 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'he == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_14 <= _pht_0_T_11;
        end else begin
          pht_0_14 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_15 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'hf == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_15 <= _pht_0_T_11;
        end else begin
          pht_0_15 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_16 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h10 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_16 <= _pht_0_T_11;
        end else begin
          pht_0_16 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_17 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h11 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_17 <= _pht_0_T_11;
        end else begin
          pht_0_17 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_18 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h12 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_18 <= _pht_0_T_11;
        end else begin
          pht_0_18 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_19 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h13 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_19 <= _pht_0_T_11;
        end else begin
          pht_0_19 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_20 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h14 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_20 <= _pht_0_T_11;
        end else begin
          pht_0_20 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_21 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h15 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_21 <= _pht_0_T_11;
        end else begin
          pht_0_21 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_22 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h16 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_22 <= _pht_0_T_11;
        end else begin
          pht_0_22 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_23 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h17 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_23 <= _pht_0_T_11;
        end else begin
          pht_0_23 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_24 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h18 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_24 <= _pht_0_T_11;
        end else begin
          pht_0_24 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_25 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h19 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_25 <= _pht_0_T_11;
        end else begin
          pht_0_25 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_26 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h1a == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_26 <= _pht_0_T_11;
        end else begin
          pht_0_26 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_27 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h1b == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_27 <= _pht_0_T_11;
        end else begin
          pht_0_27 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_28 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h1c == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_28 <= _pht_0_T_11;
        end else begin
          pht_0_28 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_29 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h1d == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_29 <= _pht_0_T_11;
        end else begin
          pht_0_29 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_30 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h1e == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_30 <= _pht_0_T_11;
        end else begin
          pht_0_30 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_31 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h1f == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_31 <= _pht_0_T_11;
        end else begin
          pht_0_31 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_32 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h20 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_32 <= _pht_0_T_11;
        end else begin
          pht_0_32 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_33 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h21 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_33 <= _pht_0_T_11;
        end else begin
          pht_0_33 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_34 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h22 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_34 <= _pht_0_T_11;
        end else begin
          pht_0_34 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_35 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h23 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_35 <= _pht_0_T_11;
        end else begin
          pht_0_35 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_36 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h24 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_36 <= _pht_0_T_11;
        end else begin
          pht_0_36 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_37 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h25 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_37 <= _pht_0_T_11;
        end else begin
          pht_0_37 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_38 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h26 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_38 <= _pht_0_T_11;
        end else begin
          pht_0_38 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_39 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h27 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_39 <= _pht_0_T_11;
        end else begin
          pht_0_39 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_40 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h28 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_40 <= _pht_0_T_11;
        end else begin
          pht_0_40 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_41 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h29 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_41 <= _pht_0_T_11;
        end else begin
          pht_0_41 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_42 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h2a == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_42 <= _pht_0_T_11;
        end else begin
          pht_0_42 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_43 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h2b == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_43 <= _pht_0_T_11;
        end else begin
          pht_0_43 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_44 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h2c == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_44 <= _pht_0_T_11;
        end else begin
          pht_0_44 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_45 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h2d == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_45 <= _pht_0_T_11;
        end else begin
          pht_0_45 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_46 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h2e == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_46 <= _pht_0_T_11;
        end else begin
          pht_0_46 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_47 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h2f == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_47 <= _pht_0_T_11;
        end else begin
          pht_0_47 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_48 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h30 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_48 <= _pht_0_T_11;
        end else begin
          pht_0_48 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_49 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h31 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_49 <= _pht_0_T_11;
        end else begin
          pht_0_49 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_50 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h32 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_50 <= _pht_0_T_11;
        end else begin
          pht_0_50 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_51 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h33 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_51 <= _pht_0_T_11;
        end else begin
          pht_0_51 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_52 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h34 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_52 <= _pht_0_T_11;
        end else begin
          pht_0_52 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_53 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h35 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_53 <= _pht_0_T_11;
        end else begin
          pht_0_53 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_54 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h36 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_54 <= _pht_0_T_11;
        end else begin
          pht_0_54 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_55 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h37 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_55 <= _pht_0_T_11;
        end else begin
          pht_0_55 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_56 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h38 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_56 <= _pht_0_T_11;
        end else begin
          pht_0_56 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_57 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h39 == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_57 <= _pht_0_T_11;
        end else begin
          pht_0_57 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_58 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h3a == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_58 <= _pht_0_T_11;
        end else begin
          pht_0_58 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_59 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h3b == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_59 <= _pht_0_T_11;
        end else begin
          pht_0_59 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_60 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h3c == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_60 <= _pht_0_T_11;
        end else begin
          pht_0_60 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_61 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h3d == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_61 <= _pht_0_T_11;
        end else begin
          pht_0_61 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_62 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h3e == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_62 <= _pht_0_T_11;
        end else begin
          pht_0_62 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_0_63 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 162:25]
      if (6'h3f == pht1WAddr) begin // @[bht_btb.scala 163:25]
        if (2'h3 == _GEN_703) begin // @[Mux.scala 81:58]
          pht_0_63 <= _pht_0_T_11;
        end else begin
          pht_0_63 <= _pht_0_T_15;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_0 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h0 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_0 <= _pht_1_T_3;
        end else begin
          pht_1_0 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_1 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h1 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_1 <= _pht_1_T_3;
        end else begin
          pht_1_1 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_2 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h2 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_2 <= _pht_1_T_3;
        end else begin
          pht_1_2 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_3 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h3 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_3 <= _pht_1_T_3;
        end else begin
          pht_1_3 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_4 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h4 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_4 <= _pht_1_T_3;
        end else begin
          pht_1_4 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_5 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h5 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_5 <= _pht_1_T_3;
        end else begin
          pht_1_5 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_6 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h6 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_6 <= _pht_1_T_3;
        end else begin
          pht_1_6 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_7 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h7 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_7 <= _pht_1_T_3;
        end else begin
          pht_1_7 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_8 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h8 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_8 <= _pht_1_T_3;
        end else begin
          pht_1_8 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_9 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h9 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_9 <= _pht_1_T_3;
        end else begin
          pht_1_9 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_10 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'ha == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_10 <= _pht_1_T_3;
        end else begin
          pht_1_10 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_11 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'hb == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_11 <= _pht_1_T_3;
        end else begin
          pht_1_11 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_12 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'hc == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_12 <= _pht_1_T_3;
        end else begin
          pht_1_12 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_13 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'hd == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_13 <= _pht_1_T_3;
        end else begin
          pht_1_13 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_14 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'he == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_14 <= _pht_1_T_3;
        end else begin
          pht_1_14 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_15 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'hf == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_15 <= _pht_1_T_3;
        end else begin
          pht_1_15 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_16 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h10 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_16 <= _pht_1_T_3;
        end else begin
          pht_1_16 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_17 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h11 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_17 <= _pht_1_T_3;
        end else begin
          pht_1_17 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_18 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h12 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_18 <= _pht_1_T_3;
        end else begin
          pht_1_18 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_19 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h13 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_19 <= _pht_1_T_3;
        end else begin
          pht_1_19 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_20 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h14 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_20 <= _pht_1_T_3;
        end else begin
          pht_1_20 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_21 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h15 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_21 <= _pht_1_T_3;
        end else begin
          pht_1_21 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_22 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h16 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_22 <= _pht_1_T_3;
        end else begin
          pht_1_22 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_23 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h17 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_23 <= _pht_1_T_3;
        end else begin
          pht_1_23 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_24 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h18 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_24 <= _pht_1_T_3;
        end else begin
          pht_1_24 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_25 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h19 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_25 <= _pht_1_T_3;
        end else begin
          pht_1_25 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_26 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h1a == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_26 <= _pht_1_T_3;
        end else begin
          pht_1_26 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_27 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h1b == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_27 <= _pht_1_T_3;
        end else begin
          pht_1_27 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_28 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h1c == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_28 <= _pht_1_T_3;
        end else begin
          pht_1_28 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_29 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h1d == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_29 <= _pht_1_T_3;
        end else begin
          pht_1_29 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_30 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h1e == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_30 <= _pht_1_T_3;
        end else begin
          pht_1_30 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_31 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h1f == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_31 <= _pht_1_T_3;
        end else begin
          pht_1_31 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_32 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h20 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_32 <= _pht_1_T_3;
        end else begin
          pht_1_32 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_33 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h21 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_33 <= _pht_1_T_3;
        end else begin
          pht_1_33 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_34 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h22 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_34 <= _pht_1_T_3;
        end else begin
          pht_1_34 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_35 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h23 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_35 <= _pht_1_T_3;
        end else begin
          pht_1_35 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_36 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h24 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_36 <= _pht_1_T_3;
        end else begin
          pht_1_36 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_37 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h25 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_37 <= _pht_1_T_3;
        end else begin
          pht_1_37 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_38 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h26 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_38 <= _pht_1_T_3;
        end else begin
          pht_1_38 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_39 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h27 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_39 <= _pht_1_T_3;
        end else begin
          pht_1_39 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_40 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h28 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_40 <= _pht_1_T_3;
        end else begin
          pht_1_40 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_41 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h29 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_41 <= _pht_1_T_3;
        end else begin
          pht_1_41 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_42 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h2a == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_42 <= _pht_1_T_3;
        end else begin
          pht_1_42 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_43 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h2b == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_43 <= _pht_1_T_3;
        end else begin
          pht_1_43 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_44 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h2c == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_44 <= _pht_1_T_3;
        end else begin
          pht_1_44 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_45 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h2d == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_45 <= _pht_1_T_3;
        end else begin
          pht_1_45 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_46 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h2e == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_46 <= _pht_1_T_3;
        end else begin
          pht_1_46 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_47 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h2f == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_47 <= _pht_1_T_3;
        end else begin
          pht_1_47 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_48 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h30 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_48 <= _pht_1_T_3;
        end else begin
          pht_1_48 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_49 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h31 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_49 <= _pht_1_T_3;
        end else begin
          pht_1_49 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_50 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h32 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_50 <= _pht_1_T_3;
        end else begin
          pht_1_50 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_51 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h33 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_51 <= _pht_1_T_3;
        end else begin
          pht_1_51 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_52 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h34 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_52 <= _pht_1_T_3;
        end else begin
          pht_1_52 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_53 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h35 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_53 <= _pht_1_T_3;
        end else begin
          pht_1_53 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_54 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h36 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_54 <= _pht_1_T_3;
        end else begin
          pht_1_54 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_55 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h37 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_55 <= _pht_1_T_3;
        end else begin
          pht_1_55 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_56 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h38 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_56 <= _pht_1_T_3;
        end else begin
          pht_1_56 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_57 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h39 == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_57 <= _pht_1_T_3;
        end else begin
          pht_1_57 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_58 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h3a == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_58 <= _pht_1_T_3;
        end else begin
          pht_1_58 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_59 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h3b == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_59 <= _pht_1_T_3;
        end else begin
          pht_1_59 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_60 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h3c == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_60 <= _pht_1_T_3;
        end else begin
          pht_1_60 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_61 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h3d == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_61 <= _pht_1_T_3;
        end else begin
          pht_1_61 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_62 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h3e == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_62 <= _pht_1_T_3;
        end else begin
          pht_1_62 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_1_63 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 172:25]
      if (6'h3f == pht1WAddr) begin // @[bht_btb.scala 173:25]
        if (2'h3 == _GEN_575) begin // @[Mux.scala 81:58]
          pht_1_63 <= _pht_1_T_3;
        end else begin
          pht_1_63 <= _pht_1_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_0 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h0 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_0 <= _pht_1_T_3;
        end else begin
          pht_2_0 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_1 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h1 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_1 <= _pht_1_T_3;
        end else begin
          pht_2_1 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_2 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h2 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_2 <= _pht_1_T_3;
        end else begin
          pht_2_2 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_3 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h3 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_3 <= _pht_1_T_3;
        end else begin
          pht_2_3 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_4 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h4 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_4 <= _pht_1_T_3;
        end else begin
          pht_2_4 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_5 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h5 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_5 <= _pht_1_T_3;
        end else begin
          pht_2_5 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_6 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h6 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_6 <= _pht_1_T_3;
        end else begin
          pht_2_6 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_7 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h7 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_7 <= _pht_1_T_3;
        end else begin
          pht_2_7 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_8 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h8 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_8 <= _pht_1_T_3;
        end else begin
          pht_2_8 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_9 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h9 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_9 <= _pht_1_T_3;
        end else begin
          pht_2_9 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_10 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'ha == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_10 <= _pht_1_T_3;
        end else begin
          pht_2_10 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_11 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'hb == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_11 <= _pht_1_T_3;
        end else begin
          pht_2_11 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_12 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'hc == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_12 <= _pht_1_T_3;
        end else begin
          pht_2_12 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_13 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'hd == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_13 <= _pht_1_T_3;
        end else begin
          pht_2_13 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_14 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'he == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_14 <= _pht_1_T_3;
        end else begin
          pht_2_14 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_15 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'hf == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_15 <= _pht_1_T_3;
        end else begin
          pht_2_15 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_16 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h10 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_16 <= _pht_1_T_3;
        end else begin
          pht_2_16 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_17 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h11 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_17 <= _pht_1_T_3;
        end else begin
          pht_2_17 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_18 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h12 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_18 <= _pht_1_T_3;
        end else begin
          pht_2_18 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_19 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h13 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_19 <= _pht_1_T_3;
        end else begin
          pht_2_19 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_20 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h14 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_20 <= _pht_1_T_3;
        end else begin
          pht_2_20 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_21 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h15 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_21 <= _pht_1_T_3;
        end else begin
          pht_2_21 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_22 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h16 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_22 <= _pht_1_T_3;
        end else begin
          pht_2_22 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_23 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h17 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_23 <= _pht_1_T_3;
        end else begin
          pht_2_23 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_24 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h18 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_24 <= _pht_1_T_3;
        end else begin
          pht_2_24 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_25 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h19 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_25 <= _pht_1_T_3;
        end else begin
          pht_2_25 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_26 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h1a == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_26 <= _pht_1_T_3;
        end else begin
          pht_2_26 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_27 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h1b == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_27 <= _pht_1_T_3;
        end else begin
          pht_2_27 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_28 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h1c == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_28 <= _pht_1_T_3;
        end else begin
          pht_2_28 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_29 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h1d == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_29 <= _pht_1_T_3;
        end else begin
          pht_2_29 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_30 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h1e == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_30 <= _pht_1_T_3;
        end else begin
          pht_2_30 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_31 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h1f == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_31 <= _pht_1_T_3;
        end else begin
          pht_2_31 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_32 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h20 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_32 <= _pht_1_T_3;
        end else begin
          pht_2_32 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_33 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h21 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_33 <= _pht_1_T_3;
        end else begin
          pht_2_33 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_34 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h22 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_34 <= _pht_1_T_3;
        end else begin
          pht_2_34 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_35 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h23 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_35 <= _pht_1_T_3;
        end else begin
          pht_2_35 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_36 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h24 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_36 <= _pht_1_T_3;
        end else begin
          pht_2_36 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_37 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h25 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_37 <= _pht_1_T_3;
        end else begin
          pht_2_37 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_38 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h26 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_38 <= _pht_1_T_3;
        end else begin
          pht_2_38 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_39 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h27 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_39 <= _pht_1_T_3;
        end else begin
          pht_2_39 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_40 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h28 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_40 <= _pht_1_T_3;
        end else begin
          pht_2_40 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_41 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h29 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_41 <= _pht_1_T_3;
        end else begin
          pht_2_41 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_42 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h2a == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_42 <= _pht_1_T_3;
        end else begin
          pht_2_42 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_43 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h2b == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_43 <= _pht_1_T_3;
        end else begin
          pht_2_43 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_44 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h2c == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_44 <= _pht_1_T_3;
        end else begin
          pht_2_44 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_45 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h2d == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_45 <= _pht_1_T_3;
        end else begin
          pht_2_45 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_46 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h2e == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_46 <= _pht_1_T_3;
        end else begin
          pht_2_46 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_47 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h2f == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_47 <= _pht_1_T_3;
        end else begin
          pht_2_47 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_48 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h30 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_48 <= _pht_1_T_3;
        end else begin
          pht_2_48 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_49 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h31 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_49 <= _pht_1_T_3;
        end else begin
          pht_2_49 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_50 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h32 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_50 <= _pht_1_T_3;
        end else begin
          pht_2_50 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_51 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h33 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_51 <= _pht_1_T_3;
        end else begin
          pht_2_51 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_52 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h34 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_52 <= _pht_1_T_3;
        end else begin
          pht_2_52 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_53 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h35 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_53 <= _pht_1_T_3;
        end else begin
          pht_2_53 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_54 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h36 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_54 <= _pht_1_T_3;
        end else begin
          pht_2_54 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_55 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h37 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_55 <= _pht_1_T_3;
        end else begin
          pht_2_55 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_56 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h38 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_56 <= _pht_1_T_3;
        end else begin
          pht_2_56 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_57 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h39 == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_57 <= _pht_1_T_3;
        end else begin
          pht_2_57 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_58 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h3a == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_58 <= _pht_1_T_3;
        end else begin
          pht_2_58 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_59 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h3b == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_59 <= _pht_1_T_3;
        end else begin
          pht_2_59 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_60 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h3c == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_60 <= _pht_1_T_3;
        end else begin
          pht_2_60 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_61 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h3d == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_61 <= _pht_1_T_3;
        end else begin
          pht_2_61 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_62 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h3e == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_62 <= _pht_1_T_3;
        end else begin
          pht_2_62 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 117:22]
      pht_2_63 <= 2'h1; // @[bht_btb.scala 117:22]
    end else if (io_takenValid) begin // @[bht_btb.scala 180:25]
      if (6'h3f == pht2WAddr) begin // @[bht_btb.scala 181:25]
        if (2'h3 == _GEN_639) begin // @[Mux.scala 81:58]
          pht_2_63 <= _pht_1_T_3;
        end else begin
          pht_2_63 <= _pht_2_T_7;
        end
      end
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_0 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_0 <= _GEN_1217;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_1 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_1 <= _GEN_1218;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_2 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_2 <= _GEN_1219;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_3 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_3 <= _GEN_1220;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_4 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_4 <= _GEN_1221;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_5 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_5 <= _GEN_1222;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_6 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_6 <= _GEN_1223;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_7 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_7 <= _GEN_1224;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_8 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_8 <= _GEN_1225;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_9 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_9 <= _GEN_1226;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_10 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_10 <= _GEN_1227;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_11 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_11 <= _GEN_1228;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_12 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_12 <= _GEN_1229;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_13 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_13 <= _GEN_1230;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_14 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_14 <= _GEN_1231;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_15 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_15 <= _GEN_1232;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_16 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_16 <= _GEN_1233;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_17 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_17 <= _GEN_1234;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_18 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_18 <= _GEN_1235;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_19 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_19 <= _GEN_1236;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_20 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_20 <= _GEN_1237;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_21 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_21 <= _GEN_1238;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_22 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_22 <= _GEN_1239;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_23 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_23 <= _GEN_1240;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_24 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_24 <= _GEN_1241;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_25 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_25 <= _GEN_1242;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_26 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_26 <= _GEN_1243;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_27 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_27 <= _GEN_1244;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_28 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_28 <= _GEN_1245;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_29 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_29 <= _GEN_1246;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_30 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_30 <= _GEN_1247;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_31 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_31 <= _GEN_1248;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_32 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_32 <= _GEN_1249;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_33 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_33 <= _GEN_1250;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_34 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_34 <= _GEN_1251;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_35 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_35 <= _GEN_1252;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_36 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_36 <= _GEN_1253;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_37 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_37 <= _GEN_1254;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_38 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_38 <= _GEN_1255;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_39 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_39 <= _GEN_1256;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_40 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_40 <= _GEN_1257;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_41 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_41 <= _GEN_1258;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_42 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_42 <= _GEN_1259;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_43 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_43 <= _GEN_1260;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_44 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_44 <= _GEN_1261;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_45 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_45 <= _GEN_1262;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_46 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_46 <= _GEN_1263;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_47 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_47 <= _GEN_1264;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_48 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_48 <= _GEN_1265;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_49 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_49 <= _GEN_1266;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_50 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_50 <= _GEN_1267;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_51 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_51 <= _GEN_1268;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_52 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_52 <= _GEN_1269;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_53 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_53 <= _GEN_1270;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_54 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_54 <= _GEN_1271;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_55 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_55 <= _GEN_1272;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_56 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_56 <= _GEN_1273;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_57 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_57 <= _GEN_1274;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_58 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_58 <= _GEN_1275;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_59 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_59 <= _GEN_1276;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_60 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_60 <= _GEN_1277;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_61 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_61 <= _GEN_1278;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_62 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_62 <= _GEN_1279;
    end
    if (reset) begin // @[bht_btb.scala 120:23]
      btbV_63 <= 1'h0; // @[bht_btb.scala 120:23]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      btbV_63 <= _GEN_1280;
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_0 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h0 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_0 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_1 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_1 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_2 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_2 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_3 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_3 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_4 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h4 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_4 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_5 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h5 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_5 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_6 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h6 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_6 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_7 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h7 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_7 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_8 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h8 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_8 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_9 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h9 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_9 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_10 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'ha == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_10 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_11 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'hb == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_11 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_12 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'hc == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_12 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_13 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'hd == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_13 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_14 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'he == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_14 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_15 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'hf == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_15 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_16 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h10 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_16 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_17 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h11 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_17 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_18 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h12 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_18 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_19 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h13 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_19 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_20 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h14 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_20 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_21 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h15 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_21 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_22 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h16 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_22 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_23 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h17 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_23 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_24 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h18 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_24 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_25 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h19 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_25 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_26 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1a == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_26 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_27 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1b == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_27 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_28 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1c == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_28 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_29 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1d == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_29 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_30 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1e == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_30 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_31 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1f == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_31 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_32 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h20 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_32 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_33 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h21 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_33 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_34 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h22 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_34 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_35 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h23 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_35 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_36 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h24 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_36 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_37 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h25 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_37 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_38 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h26 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_38 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_39 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h27 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_39 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_40 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h28 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_40 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_41 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h29 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_41 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_42 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2a == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_42 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_43 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2b == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_43 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_44 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2c == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_44 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_45 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2d == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_45 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_46 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2e == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_46 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_47 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2f == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_47 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_48 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h30 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_48 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_49 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h31 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_49 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_50 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h32 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_50 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_51 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h33 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_51 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_52 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h34 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_52 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_53 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h35 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_53 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_54 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h36 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_54 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_55 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h37 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_55 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_56 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h38 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_56 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_57 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h39 == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_57 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_58 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3a == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_58 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_59 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3b == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_59 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_60 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3c == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_60 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_61 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3d == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_61 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_62 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3e == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_62 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 121:25]
      btbTag_63 <= 6'h0; // @[bht_btb.scala 121:25]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3f == upIndex) begin // @[bht_btb.scala 198:21]
        btbTag_63 <= bhtWAddr; // @[bht_btb.scala 198:21]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_0 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h0 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_0 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_1 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_1 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_2 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_2 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_3 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_3 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_4 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h4 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_4 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_5 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h5 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_5 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_6 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h6 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_6 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_7 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h7 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_7 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_8 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h8 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_8 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_9 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h9 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_9 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_10 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'ha == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_10 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_11 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'hb == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_11 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_12 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'hc == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_12 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_13 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'hd == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_13 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_14 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'he == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_14 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_15 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'hf == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_15 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_16 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h10 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_16 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_17 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h11 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_17 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_18 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h12 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_18 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_19 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h13 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_19 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_20 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h14 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_20 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_21 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h15 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_21 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_22 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h16 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_22 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_23 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h17 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_23 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_24 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h18 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_24 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_25 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h19 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_25 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_26 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1a == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_26 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_27 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1b == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_27 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_28 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1c == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_28 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_29 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1d == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_29 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_30 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1e == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_30 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_31 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h1f == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_31 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_32 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h20 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_32 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_33 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h21 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_33 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_34 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h22 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_34 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_35 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h23 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_35 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_36 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h24 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_36 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_37 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h25 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_37 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_38 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h26 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_38 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_39 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h27 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_39 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_40 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h28 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_40 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_41 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h29 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_41 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_42 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2a == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_42 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_43 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2b == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_43 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_44 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2c == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_44 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_45 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2d == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_45 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_46 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2e == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_46 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_47 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h2f == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_47 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_48 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h30 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_48 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_49 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h31 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_49 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_50 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h32 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_50 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_51 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h33 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_51 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_52 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h34 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_52 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_53 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h35 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_53 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_54 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h36 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_54 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_55 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h37 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_55 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_56 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h38 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_56 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_57 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h39 == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_57 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_58 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3a == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_58 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_59 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3b == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_59 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_60 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3c == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_60 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_61 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3d == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_61 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_62 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3e == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_62 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    if (reset) begin // @[bht_btb.scala 122:26]
      btbMeta_63 <= 3'h0; // @[bht_btb.scala 122:26]
    end else if (io_exTakenPre & io_takenValid) begin // @[bht_btb.scala 196:40]
      if (6'h3f == upIndex) begin // @[bht_btb.scala 199:22]
        btbMeta_63 <= io_nextPC[2:0]; // @[bht_btb.scala 199:22]
      end
    end
    io_ready_REG <= io_valid; // @[bht_btb.scala 144:24]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ghr = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  bht_0 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  bht_1 = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  bht_2 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  bht_3 = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  bht_4 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  bht_5 = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  bht_6 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  bht_7 = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  bht_8 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  bht_9 = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  bht_10 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  bht_11 = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  bht_12 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  bht_13 = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  bht_14 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  bht_15 = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  bht_16 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  bht_17 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  bht_18 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  bht_19 = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  bht_20 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  bht_21 = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  bht_22 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  bht_23 = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  bht_24 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  bht_25 = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  bht_26 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  bht_27 = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  bht_28 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  bht_29 = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  bht_30 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  bht_31 = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  bht_32 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  bht_33 = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  bht_34 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  bht_35 = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  bht_36 = _RAND_37[5:0];
  _RAND_38 = {1{`RANDOM}};
  bht_37 = _RAND_38[5:0];
  _RAND_39 = {1{`RANDOM}};
  bht_38 = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  bht_39 = _RAND_40[5:0];
  _RAND_41 = {1{`RANDOM}};
  bht_40 = _RAND_41[5:0];
  _RAND_42 = {1{`RANDOM}};
  bht_41 = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  bht_42 = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  bht_43 = _RAND_44[5:0];
  _RAND_45 = {1{`RANDOM}};
  bht_44 = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  bht_45 = _RAND_46[5:0];
  _RAND_47 = {1{`RANDOM}};
  bht_46 = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  bht_47 = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  bht_48 = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  bht_49 = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  bht_50 = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  bht_51 = _RAND_52[5:0];
  _RAND_53 = {1{`RANDOM}};
  bht_52 = _RAND_53[5:0];
  _RAND_54 = {1{`RANDOM}};
  bht_53 = _RAND_54[5:0];
  _RAND_55 = {1{`RANDOM}};
  bht_54 = _RAND_55[5:0];
  _RAND_56 = {1{`RANDOM}};
  bht_55 = _RAND_56[5:0];
  _RAND_57 = {1{`RANDOM}};
  bht_56 = _RAND_57[5:0];
  _RAND_58 = {1{`RANDOM}};
  bht_57 = _RAND_58[5:0];
  _RAND_59 = {1{`RANDOM}};
  bht_58 = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  bht_59 = _RAND_60[5:0];
  _RAND_61 = {1{`RANDOM}};
  bht_60 = _RAND_61[5:0];
  _RAND_62 = {1{`RANDOM}};
  bht_61 = _RAND_62[5:0];
  _RAND_63 = {1{`RANDOM}};
  bht_62 = _RAND_63[5:0];
  _RAND_64 = {1{`RANDOM}};
  bht_63 = _RAND_64[5:0];
  _RAND_65 = {1{`RANDOM}};
  pht_0_0 = _RAND_65[1:0];
  _RAND_66 = {1{`RANDOM}};
  pht_0_1 = _RAND_66[1:0];
  _RAND_67 = {1{`RANDOM}};
  pht_0_2 = _RAND_67[1:0];
  _RAND_68 = {1{`RANDOM}};
  pht_0_3 = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  pht_0_4 = _RAND_69[1:0];
  _RAND_70 = {1{`RANDOM}};
  pht_0_5 = _RAND_70[1:0];
  _RAND_71 = {1{`RANDOM}};
  pht_0_6 = _RAND_71[1:0];
  _RAND_72 = {1{`RANDOM}};
  pht_0_7 = _RAND_72[1:0];
  _RAND_73 = {1{`RANDOM}};
  pht_0_8 = _RAND_73[1:0];
  _RAND_74 = {1{`RANDOM}};
  pht_0_9 = _RAND_74[1:0];
  _RAND_75 = {1{`RANDOM}};
  pht_0_10 = _RAND_75[1:0];
  _RAND_76 = {1{`RANDOM}};
  pht_0_11 = _RAND_76[1:0];
  _RAND_77 = {1{`RANDOM}};
  pht_0_12 = _RAND_77[1:0];
  _RAND_78 = {1{`RANDOM}};
  pht_0_13 = _RAND_78[1:0];
  _RAND_79 = {1{`RANDOM}};
  pht_0_14 = _RAND_79[1:0];
  _RAND_80 = {1{`RANDOM}};
  pht_0_15 = _RAND_80[1:0];
  _RAND_81 = {1{`RANDOM}};
  pht_0_16 = _RAND_81[1:0];
  _RAND_82 = {1{`RANDOM}};
  pht_0_17 = _RAND_82[1:0];
  _RAND_83 = {1{`RANDOM}};
  pht_0_18 = _RAND_83[1:0];
  _RAND_84 = {1{`RANDOM}};
  pht_0_19 = _RAND_84[1:0];
  _RAND_85 = {1{`RANDOM}};
  pht_0_20 = _RAND_85[1:0];
  _RAND_86 = {1{`RANDOM}};
  pht_0_21 = _RAND_86[1:0];
  _RAND_87 = {1{`RANDOM}};
  pht_0_22 = _RAND_87[1:0];
  _RAND_88 = {1{`RANDOM}};
  pht_0_23 = _RAND_88[1:0];
  _RAND_89 = {1{`RANDOM}};
  pht_0_24 = _RAND_89[1:0];
  _RAND_90 = {1{`RANDOM}};
  pht_0_25 = _RAND_90[1:0];
  _RAND_91 = {1{`RANDOM}};
  pht_0_26 = _RAND_91[1:0];
  _RAND_92 = {1{`RANDOM}};
  pht_0_27 = _RAND_92[1:0];
  _RAND_93 = {1{`RANDOM}};
  pht_0_28 = _RAND_93[1:0];
  _RAND_94 = {1{`RANDOM}};
  pht_0_29 = _RAND_94[1:0];
  _RAND_95 = {1{`RANDOM}};
  pht_0_30 = _RAND_95[1:0];
  _RAND_96 = {1{`RANDOM}};
  pht_0_31 = _RAND_96[1:0];
  _RAND_97 = {1{`RANDOM}};
  pht_0_32 = _RAND_97[1:0];
  _RAND_98 = {1{`RANDOM}};
  pht_0_33 = _RAND_98[1:0];
  _RAND_99 = {1{`RANDOM}};
  pht_0_34 = _RAND_99[1:0];
  _RAND_100 = {1{`RANDOM}};
  pht_0_35 = _RAND_100[1:0];
  _RAND_101 = {1{`RANDOM}};
  pht_0_36 = _RAND_101[1:0];
  _RAND_102 = {1{`RANDOM}};
  pht_0_37 = _RAND_102[1:0];
  _RAND_103 = {1{`RANDOM}};
  pht_0_38 = _RAND_103[1:0];
  _RAND_104 = {1{`RANDOM}};
  pht_0_39 = _RAND_104[1:0];
  _RAND_105 = {1{`RANDOM}};
  pht_0_40 = _RAND_105[1:0];
  _RAND_106 = {1{`RANDOM}};
  pht_0_41 = _RAND_106[1:0];
  _RAND_107 = {1{`RANDOM}};
  pht_0_42 = _RAND_107[1:0];
  _RAND_108 = {1{`RANDOM}};
  pht_0_43 = _RAND_108[1:0];
  _RAND_109 = {1{`RANDOM}};
  pht_0_44 = _RAND_109[1:0];
  _RAND_110 = {1{`RANDOM}};
  pht_0_45 = _RAND_110[1:0];
  _RAND_111 = {1{`RANDOM}};
  pht_0_46 = _RAND_111[1:0];
  _RAND_112 = {1{`RANDOM}};
  pht_0_47 = _RAND_112[1:0];
  _RAND_113 = {1{`RANDOM}};
  pht_0_48 = _RAND_113[1:0];
  _RAND_114 = {1{`RANDOM}};
  pht_0_49 = _RAND_114[1:0];
  _RAND_115 = {1{`RANDOM}};
  pht_0_50 = _RAND_115[1:0];
  _RAND_116 = {1{`RANDOM}};
  pht_0_51 = _RAND_116[1:0];
  _RAND_117 = {1{`RANDOM}};
  pht_0_52 = _RAND_117[1:0];
  _RAND_118 = {1{`RANDOM}};
  pht_0_53 = _RAND_118[1:0];
  _RAND_119 = {1{`RANDOM}};
  pht_0_54 = _RAND_119[1:0];
  _RAND_120 = {1{`RANDOM}};
  pht_0_55 = _RAND_120[1:0];
  _RAND_121 = {1{`RANDOM}};
  pht_0_56 = _RAND_121[1:0];
  _RAND_122 = {1{`RANDOM}};
  pht_0_57 = _RAND_122[1:0];
  _RAND_123 = {1{`RANDOM}};
  pht_0_58 = _RAND_123[1:0];
  _RAND_124 = {1{`RANDOM}};
  pht_0_59 = _RAND_124[1:0];
  _RAND_125 = {1{`RANDOM}};
  pht_0_60 = _RAND_125[1:0];
  _RAND_126 = {1{`RANDOM}};
  pht_0_61 = _RAND_126[1:0];
  _RAND_127 = {1{`RANDOM}};
  pht_0_62 = _RAND_127[1:0];
  _RAND_128 = {1{`RANDOM}};
  pht_0_63 = _RAND_128[1:0];
  _RAND_129 = {1{`RANDOM}};
  pht_1_0 = _RAND_129[1:0];
  _RAND_130 = {1{`RANDOM}};
  pht_1_1 = _RAND_130[1:0];
  _RAND_131 = {1{`RANDOM}};
  pht_1_2 = _RAND_131[1:0];
  _RAND_132 = {1{`RANDOM}};
  pht_1_3 = _RAND_132[1:0];
  _RAND_133 = {1{`RANDOM}};
  pht_1_4 = _RAND_133[1:0];
  _RAND_134 = {1{`RANDOM}};
  pht_1_5 = _RAND_134[1:0];
  _RAND_135 = {1{`RANDOM}};
  pht_1_6 = _RAND_135[1:0];
  _RAND_136 = {1{`RANDOM}};
  pht_1_7 = _RAND_136[1:0];
  _RAND_137 = {1{`RANDOM}};
  pht_1_8 = _RAND_137[1:0];
  _RAND_138 = {1{`RANDOM}};
  pht_1_9 = _RAND_138[1:0];
  _RAND_139 = {1{`RANDOM}};
  pht_1_10 = _RAND_139[1:0];
  _RAND_140 = {1{`RANDOM}};
  pht_1_11 = _RAND_140[1:0];
  _RAND_141 = {1{`RANDOM}};
  pht_1_12 = _RAND_141[1:0];
  _RAND_142 = {1{`RANDOM}};
  pht_1_13 = _RAND_142[1:0];
  _RAND_143 = {1{`RANDOM}};
  pht_1_14 = _RAND_143[1:0];
  _RAND_144 = {1{`RANDOM}};
  pht_1_15 = _RAND_144[1:0];
  _RAND_145 = {1{`RANDOM}};
  pht_1_16 = _RAND_145[1:0];
  _RAND_146 = {1{`RANDOM}};
  pht_1_17 = _RAND_146[1:0];
  _RAND_147 = {1{`RANDOM}};
  pht_1_18 = _RAND_147[1:0];
  _RAND_148 = {1{`RANDOM}};
  pht_1_19 = _RAND_148[1:0];
  _RAND_149 = {1{`RANDOM}};
  pht_1_20 = _RAND_149[1:0];
  _RAND_150 = {1{`RANDOM}};
  pht_1_21 = _RAND_150[1:0];
  _RAND_151 = {1{`RANDOM}};
  pht_1_22 = _RAND_151[1:0];
  _RAND_152 = {1{`RANDOM}};
  pht_1_23 = _RAND_152[1:0];
  _RAND_153 = {1{`RANDOM}};
  pht_1_24 = _RAND_153[1:0];
  _RAND_154 = {1{`RANDOM}};
  pht_1_25 = _RAND_154[1:0];
  _RAND_155 = {1{`RANDOM}};
  pht_1_26 = _RAND_155[1:0];
  _RAND_156 = {1{`RANDOM}};
  pht_1_27 = _RAND_156[1:0];
  _RAND_157 = {1{`RANDOM}};
  pht_1_28 = _RAND_157[1:0];
  _RAND_158 = {1{`RANDOM}};
  pht_1_29 = _RAND_158[1:0];
  _RAND_159 = {1{`RANDOM}};
  pht_1_30 = _RAND_159[1:0];
  _RAND_160 = {1{`RANDOM}};
  pht_1_31 = _RAND_160[1:0];
  _RAND_161 = {1{`RANDOM}};
  pht_1_32 = _RAND_161[1:0];
  _RAND_162 = {1{`RANDOM}};
  pht_1_33 = _RAND_162[1:0];
  _RAND_163 = {1{`RANDOM}};
  pht_1_34 = _RAND_163[1:0];
  _RAND_164 = {1{`RANDOM}};
  pht_1_35 = _RAND_164[1:0];
  _RAND_165 = {1{`RANDOM}};
  pht_1_36 = _RAND_165[1:0];
  _RAND_166 = {1{`RANDOM}};
  pht_1_37 = _RAND_166[1:0];
  _RAND_167 = {1{`RANDOM}};
  pht_1_38 = _RAND_167[1:0];
  _RAND_168 = {1{`RANDOM}};
  pht_1_39 = _RAND_168[1:0];
  _RAND_169 = {1{`RANDOM}};
  pht_1_40 = _RAND_169[1:0];
  _RAND_170 = {1{`RANDOM}};
  pht_1_41 = _RAND_170[1:0];
  _RAND_171 = {1{`RANDOM}};
  pht_1_42 = _RAND_171[1:0];
  _RAND_172 = {1{`RANDOM}};
  pht_1_43 = _RAND_172[1:0];
  _RAND_173 = {1{`RANDOM}};
  pht_1_44 = _RAND_173[1:0];
  _RAND_174 = {1{`RANDOM}};
  pht_1_45 = _RAND_174[1:0];
  _RAND_175 = {1{`RANDOM}};
  pht_1_46 = _RAND_175[1:0];
  _RAND_176 = {1{`RANDOM}};
  pht_1_47 = _RAND_176[1:0];
  _RAND_177 = {1{`RANDOM}};
  pht_1_48 = _RAND_177[1:0];
  _RAND_178 = {1{`RANDOM}};
  pht_1_49 = _RAND_178[1:0];
  _RAND_179 = {1{`RANDOM}};
  pht_1_50 = _RAND_179[1:0];
  _RAND_180 = {1{`RANDOM}};
  pht_1_51 = _RAND_180[1:0];
  _RAND_181 = {1{`RANDOM}};
  pht_1_52 = _RAND_181[1:0];
  _RAND_182 = {1{`RANDOM}};
  pht_1_53 = _RAND_182[1:0];
  _RAND_183 = {1{`RANDOM}};
  pht_1_54 = _RAND_183[1:0];
  _RAND_184 = {1{`RANDOM}};
  pht_1_55 = _RAND_184[1:0];
  _RAND_185 = {1{`RANDOM}};
  pht_1_56 = _RAND_185[1:0];
  _RAND_186 = {1{`RANDOM}};
  pht_1_57 = _RAND_186[1:0];
  _RAND_187 = {1{`RANDOM}};
  pht_1_58 = _RAND_187[1:0];
  _RAND_188 = {1{`RANDOM}};
  pht_1_59 = _RAND_188[1:0];
  _RAND_189 = {1{`RANDOM}};
  pht_1_60 = _RAND_189[1:0];
  _RAND_190 = {1{`RANDOM}};
  pht_1_61 = _RAND_190[1:0];
  _RAND_191 = {1{`RANDOM}};
  pht_1_62 = _RAND_191[1:0];
  _RAND_192 = {1{`RANDOM}};
  pht_1_63 = _RAND_192[1:0];
  _RAND_193 = {1{`RANDOM}};
  pht_2_0 = _RAND_193[1:0];
  _RAND_194 = {1{`RANDOM}};
  pht_2_1 = _RAND_194[1:0];
  _RAND_195 = {1{`RANDOM}};
  pht_2_2 = _RAND_195[1:0];
  _RAND_196 = {1{`RANDOM}};
  pht_2_3 = _RAND_196[1:0];
  _RAND_197 = {1{`RANDOM}};
  pht_2_4 = _RAND_197[1:0];
  _RAND_198 = {1{`RANDOM}};
  pht_2_5 = _RAND_198[1:0];
  _RAND_199 = {1{`RANDOM}};
  pht_2_6 = _RAND_199[1:0];
  _RAND_200 = {1{`RANDOM}};
  pht_2_7 = _RAND_200[1:0];
  _RAND_201 = {1{`RANDOM}};
  pht_2_8 = _RAND_201[1:0];
  _RAND_202 = {1{`RANDOM}};
  pht_2_9 = _RAND_202[1:0];
  _RAND_203 = {1{`RANDOM}};
  pht_2_10 = _RAND_203[1:0];
  _RAND_204 = {1{`RANDOM}};
  pht_2_11 = _RAND_204[1:0];
  _RAND_205 = {1{`RANDOM}};
  pht_2_12 = _RAND_205[1:0];
  _RAND_206 = {1{`RANDOM}};
  pht_2_13 = _RAND_206[1:0];
  _RAND_207 = {1{`RANDOM}};
  pht_2_14 = _RAND_207[1:0];
  _RAND_208 = {1{`RANDOM}};
  pht_2_15 = _RAND_208[1:0];
  _RAND_209 = {1{`RANDOM}};
  pht_2_16 = _RAND_209[1:0];
  _RAND_210 = {1{`RANDOM}};
  pht_2_17 = _RAND_210[1:0];
  _RAND_211 = {1{`RANDOM}};
  pht_2_18 = _RAND_211[1:0];
  _RAND_212 = {1{`RANDOM}};
  pht_2_19 = _RAND_212[1:0];
  _RAND_213 = {1{`RANDOM}};
  pht_2_20 = _RAND_213[1:0];
  _RAND_214 = {1{`RANDOM}};
  pht_2_21 = _RAND_214[1:0];
  _RAND_215 = {1{`RANDOM}};
  pht_2_22 = _RAND_215[1:0];
  _RAND_216 = {1{`RANDOM}};
  pht_2_23 = _RAND_216[1:0];
  _RAND_217 = {1{`RANDOM}};
  pht_2_24 = _RAND_217[1:0];
  _RAND_218 = {1{`RANDOM}};
  pht_2_25 = _RAND_218[1:0];
  _RAND_219 = {1{`RANDOM}};
  pht_2_26 = _RAND_219[1:0];
  _RAND_220 = {1{`RANDOM}};
  pht_2_27 = _RAND_220[1:0];
  _RAND_221 = {1{`RANDOM}};
  pht_2_28 = _RAND_221[1:0];
  _RAND_222 = {1{`RANDOM}};
  pht_2_29 = _RAND_222[1:0];
  _RAND_223 = {1{`RANDOM}};
  pht_2_30 = _RAND_223[1:0];
  _RAND_224 = {1{`RANDOM}};
  pht_2_31 = _RAND_224[1:0];
  _RAND_225 = {1{`RANDOM}};
  pht_2_32 = _RAND_225[1:0];
  _RAND_226 = {1{`RANDOM}};
  pht_2_33 = _RAND_226[1:0];
  _RAND_227 = {1{`RANDOM}};
  pht_2_34 = _RAND_227[1:0];
  _RAND_228 = {1{`RANDOM}};
  pht_2_35 = _RAND_228[1:0];
  _RAND_229 = {1{`RANDOM}};
  pht_2_36 = _RAND_229[1:0];
  _RAND_230 = {1{`RANDOM}};
  pht_2_37 = _RAND_230[1:0];
  _RAND_231 = {1{`RANDOM}};
  pht_2_38 = _RAND_231[1:0];
  _RAND_232 = {1{`RANDOM}};
  pht_2_39 = _RAND_232[1:0];
  _RAND_233 = {1{`RANDOM}};
  pht_2_40 = _RAND_233[1:0];
  _RAND_234 = {1{`RANDOM}};
  pht_2_41 = _RAND_234[1:0];
  _RAND_235 = {1{`RANDOM}};
  pht_2_42 = _RAND_235[1:0];
  _RAND_236 = {1{`RANDOM}};
  pht_2_43 = _RAND_236[1:0];
  _RAND_237 = {1{`RANDOM}};
  pht_2_44 = _RAND_237[1:0];
  _RAND_238 = {1{`RANDOM}};
  pht_2_45 = _RAND_238[1:0];
  _RAND_239 = {1{`RANDOM}};
  pht_2_46 = _RAND_239[1:0];
  _RAND_240 = {1{`RANDOM}};
  pht_2_47 = _RAND_240[1:0];
  _RAND_241 = {1{`RANDOM}};
  pht_2_48 = _RAND_241[1:0];
  _RAND_242 = {1{`RANDOM}};
  pht_2_49 = _RAND_242[1:0];
  _RAND_243 = {1{`RANDOM}};
  pht_2_50 = _RAND_243[1:0];
  _RAND_244 = {1{`RANDOM}};
  pht_2_51 = _RAND_244[1:0];
  _RAND_245 = {1{`RANDOM}};
  pht_2_52 = _RAND_245[1:0];
  _RAND_246 = {1{`RANDOM}};
  pht_2_53 = _RAND_246[1:0];
  _RAND_247 = {1{`RANDOM}};
  pht_2_54 = _RAND_247[1:0];
  _RAND_248 = {1{`RANDOM}};
  pht_2_55 = _RAND_248[1:0];
  _RAND_249 = {1{`RANDOM}};
  pht_2_56 = _RAND_249[1:0];
  _RAND_250 = {1{`RANDOM}};
  pht_2_57 = _RAND_250[1:0];
  _RAND_251 = {1{`RANDOM}};
  pht_2_58 = _RAND_251[1:0];
  _RAND_252 = {1{`RANDOM}};
  pht_2_59 = _RAND_252[1:0];
  _RAND_253 = {1{`RANDOM}};
  pht_2_60 = _RAND_253[1:0];
  _RAND_254 = {1{`RANDOM}};
  pht_2_61 = _RAND_254[1:0];
  _RAND_255 = {1{`RANDOM}};
  pht_2_62 = _RAND_255[1:0];
  _RAND_256 = {1{`RANDOM}};
  pht_2_63 = _RAND_256[1:0];
  _RAND_257 = {1{`RANDOM}};
  btbV_0 = _RAND_257[0:0];
  _RAND_258 = {1{`RANDOM}};
  btbV_1 = _RAND_258[0:0];
  _RAND_259 = {1{`RANDOM}};
  btbV_2 = _RAND_259[0:0];
  _RAND_260 = {1{`RANDOM}};
  btbV_3 = _RAND_260[0:0];
  _RAND_261 = {1{`RANDOM}};
  btbV_4 = _RAND_261[0:0];
  _RAND_262 = {1{`RANDOM}};
  btbV_5 = _RAND_262[0:0];
  _RAND_263 = {1{`RANDOM}};
  btbV_6 = _RAND_263[0:0];
  _RAND_264 = {1{`RANDOM}};
  btbV_7 = _RAND_264[0:0];
  _RAND_265 = {1{`RANDOM}};
  btbV_8 = _RAND_265[0:0];
  _RAND_266 = {1{`RANDOM}};
  btbV_9 = _RAND_266[0:0];
  _RAND_267 = {1{`RANDOM}};
  btbV_10 = _RAND_267[0:0];
  _RAND_268 = {1{`RANDOM}};
  btbV_11 = _RAND_268[0:0];
  _RAND_269 = {1{`RANDOM}};
  btbV_12 = _RAND_269[0:0];
  _RAND_270 = {1{`RANDOM}};
  btbV_13 = _RAND_270[0:0];
  _RAND_271 = {1{`RANDOM}};
  btbV_14 = _RAND_271[0:0];
  _RAND_272 = {1{`RANDOM}};
  btbV_15 = _RAND_272[0:0];
  _RAND_273 = {1{`RANDOM}};
  btbV_16 = _RAND_273[0:0];
  _RAND_274 = {1{`RANDOM}};
  btbV_17 = _RAND_274[0:0];
  _RAND_275 = {1{`RANDOM}};
  btbV_18 = _RAND_275[0:0];
  _RAND_276 = {1{`RANDOM}};
  btbV_19 = _RAND_276[0:0];
  _RAND_277 = {1{`RANDOM}};
  btbV_20 = _RAND_277[0:0];
  _RAND_278 = {1{`RANDOM}};
  btbV_21 = _RAND_278[0:0];
  _RAND_279 = {1{`RANDOM}};
  btbV_22 = _RAND_279[0:0];
  _RAND_280 = {1{`RANDOM}};
  btbV_23 = _RAND_280[0:0];
  _RAND_281 = {1{`RANDOM}};
  btbV_24 = _RAND_281[0:0];
  _RAND_282 = {1{`RANDOM}};
  btbV_25 = _RAND_282[0:0];
  _RAND_283 = {1{`RANDOM}};
  btbV_26 = _RAND_283[0:0];
  _RAND_284 = {1{`RANDOM}};
  btbV_27 = _RAND_284[0:0];
  _RAND_285 = {1{`RANDOM}};
  btbV_28 = _RAND_285[0:0];
  _RAND_286 = {1{`RANDOM}};
  btbV_29 = _RAND_286[0:0];
  _RAND_287 = {1{`RANDOM}};
  btbV_30 = _RAND_287[0:0];
  _RAND_288 = {1{`RANDOM}};
  btbV_31 = _RAND_288[0:0];
  _RAND_289 = {1{`RANDOM}};
  btbV_32 = _RAND_289[0:0];
  _RAND_290 = {1{`RANDOM}};
  btbV_33 = _RAND_290[0:0];
  _RAND_291 = {1{`RANDOM}};
  btbV_34 = _RAND_291[0:0];
  _RAND_292 = {1{`RANDOM}};
  btbV_35 = _RAND_292[0:0];
  _RAND_293 = {1{`RANDOM}};
  btbV_36 = _RAND_293[0:0];
  _RAND_294 = {1{`RANDOM}};
  btbV_37 = _RAND_294[0:0];
  _RAND_295 = {1{`RANDOM}};
  btbV_38 = _RAND_295[0:0];
  _RAND_296 = {1{`RANDOM}};
  btbV_39 = _RAND_296[0:0];
  _RAND_297 = {1{`RANDOM}};
  btbV_40 = _RAND_297[0:0];
  _RAND_298 = {1{`RANDOM}};
  btbV_41 = _RAND_298[0:0];
  _RAND_299 = {1{`RANDOM}};
  btbV_42 = _RAND_299[0:0];
  _RAND_300 = {1{`RANDOM}};
  btbV_43 = _RAND_300[0:0];
  _RAND_301 = {1{`RANDOM}};
  btbV_44 = _RAND_301[0:0];
  _RAND_302 = {1{`RANDOM}};
  btbV_45 = _RAND_302[0:0];
  _RAND_303 = {1{`RANDOM}};
  btbV_46 = _RAND_303[0:0];
  _RAND_304 = {1{`RANDOM}};
  btbV_47 = _RAND_304[0:0];
  _RAND_305 = {1{`RANDOM}};
  btbV_48 = _RAND_305[0:0];
  _RAND_306 = {1{`RANDOM}};
  btbV_49 = _RAND_306[0:0];
  _RAND_307 = {1{`RANDOM}};
  btbV_50 = _RAND_307[0:0];
  _RAND_308 = {1{`RANDOM}};
  btbV_51 = _RAND_308[0:0];
  _RAND_309 = {1{`RANDOM}};
  btbV_52 = _RAND_309[0:0];
  _RAND_310 = {1{`RANDOM}};
  btbV_53 = _RAND_310[0:0];
  _RAND_311 = {1{`RANDOM}};
  btbV_54 = _RAND_311[0:0];
  _RAND_312 = {1{`RANDOM}};
  btbV_55 = _RAND_312[0:0];
  _RAND_313 = {1{`RANDOM}};
  btbV_56 = _RAND_313[0:0];
  _RAND_314 = {1{`RANDOM}};
  btbV_57 = _RAND_314[0:0];
  _RAND_315 = {1{`RANDOM}};
  btbV_58 = _RAND_315[0:0];
  _RAND_316 = {1{`RANDOM}};
  btbV_59 = _RAND_316[0:0];
  _RAND_317 = {1{`RANDOM}};
  btbV_60 = _RAND_317[0:0];
  _RAND_318 = {1{`RANDOM}};
  btbV_61 = _RAND_318[0:0];
  _RAND_319 = {1{`RANDOM}};
  btbV_62 = _RAND_319[0:0];
  _RAND_320 = {1{`RANDOM}};
  btbV_63 = _RAND_320[0:0];
  _RAND_321 = {1{`RANDOM}};
  btbTag_0 = _RAND_321[5:0];
  _RAND_322 = {1{`RANDOM}};
  btbTag_1 = _RAND_322[5:0];
  _RAND_323 = {1{`RANDOM}};
  btbTag_2 = _RAND_323[5:0];
  _RAND_324 = {1{`RANDOM}};
  btbTag_3 = _RAND_324[5:0];
  _RAND_325 = {1{`RANDOM}};
  btbTag_4 = _RAND_325[5:0];
  _RAND_326 = {1{`RANDOM}};
  btbTag_5 = _RAND_326[5:0];
  _RAND_327 = {1{`RANDOM}};
  btbTag_6 = _RAND_327[5:0];
  _RAND_328 = {1{`RANDOM}};
  btbTag_7 = _RAND_328[5:0];
  _RAND_329 = {1{`RANDOM}};
  btbTag_8 = _RAND_329[5:0];
  _RAND_330 = {1{`RANDOM}};
  btbTag_9 = _RAND_330[5:0];
  _RAND_331 = {1{`RANDOM}};
  btbTag_10 = _RAND_331[5:0];
  _RAND_332 = {1{`RANDOM}};
  btbTag_11 = _RAND_332[5:0];
  _RAND_333 = {1{`RANDOM}};
  btbTag_12 = _RAND_333[5:0];
  _RAND_334 = {1{`RANDOM}};
  btbTag_13 = _RAND_334[5:0];
  _RAND_335 = {1{`RANDOM}};
  btbTag_14 = _RAND_335[5:0];
  _RAND_336 = {1{`RANDOM}};
  btbTag_15 = _RAND_336[5:0];
  _RAND_337 = {1{`RANDOM}};
  btbTag_16 = _RAND_337[5:0];
  _RAND_338 = {1{`RANDOM}};
  btbTag_17 = _RAND_338[5:0];
  _RAND_339 = {1{`RANDOM}};
  btbTag_18 = _RAND_339[5:0];
  _RAND_340 = {1{`RANDOM}};
  btbTag_19 = _RAND_340[5:0];
  _RAND_341 = {1{`RANDOM}};
  btbTag_20 = _RAND_341[5:0];
  _RAND_342 = {1{`RANDOM}};
  btbTag_21 = _RAND_342[5:0];
  _RAND_343 = {1{`RANDOM}};
  btbTag_22 = _RAND_343[5:0];
  _RAND_344 = {1{`RANDOM}};
  btbTag_23 = _RAND_344[5:0];
  _RAND_345 = {1{`RANDOM}};
  btbTag_24 = _RAND_345[5:0];
  _RAND_346 = {1{`RANDOM}};
  btbTag_25 = _RAND_346[5:0];
  _RAND_347 = {1{`RANDOM}};
  btbTag_26 = _RAND_347[5:0];
  _RAND_348 = {1{`RANDOM}};
  btbTag_27 = _RAND_348[5:0];
  _RAND_349 = {1{`RANDOM}};
  btbTag_28 = _RAND_349[5:0];
  _RAND_350 = {1{`RANDOM}};
  btbTag_29 = _RAND_350[5:0];
  _RAND_351 = {1{`RANDOM}};
  btbTag_30 = _RAND_351[5:0];
  _RAND_352 = {1{`RANDOM}};
  btbTag_31 = _RAND_352[5:0];
  _RAND_353 = {1{`RANDOM}};
  btbTag_32 = _RAND_353[5:0];
  _RAND_354 = {1{`RANDOM}};
  btbTag_33 = _RAND_354[5:0];
  _RAND_355 = {1{`RANDOM}};
  btbTag_34 = _RAND_355[5:0];
  _RAND_356 = {1{`RANDOM}};
  btbTag_35 = _RAND_356[5:0];
  _RAND_357 = {1{`RANDOM}};
  btbTag_36 = _RAND_357[5:0];
  _RAND_358 = {1{`RANDOM}};
  btbTag_37 = _RAND_358[5:0];
  _RAND_359 = {1{`RANDOM}};
  btbTag_38 = _RAND_359[5:0];
  _RAND_360 = {1{`RANDOM}};
  btbTag_39 = _RAND_360[5:0];
  _RAND_361 = {1{`RANDOM}};
  btbTag_40 = _RAND_361[5:0];
  _RAND_362 = {1{`RANDOM}};
  btbTag_41 = _RAND_362[5:0];
  _RAND_363 = {1{`RANDOM}};
  btbTag_42 = _RAND_363[5:0];
  _RAND_364 = {1{`RANDOM}};
  btbTag_43 = _RAND_364[5:0];
  _RAND_365 = {1{`RANDOM}};
  btbTag_44 = _RAND_365[5:0];
  _RAND_366 = {1{`RANDOM}};
  btbTag_45 = _RAND_366[5:0];
  _RAND_367 = {1{`RANDOM}};
  btbTag_46 = _RAND_367[5:0];
  _RAND_368 = {1{`RANDOM}};
  btbTag_47 = _RAND_368[5:0];
  _RAND_369 = {1{`RANDOM}};
  btbTag_48 = _RAND_369[5:0];
  _RAND_370 = {1{`RANDOM}};
  btbTag_49 = _RAND_370[5:0];
  _RAND_371 = {1{`RANDOM}};
  btbTag_50 = _RAND_371[5:0];
  _RAND_372 = {1{`RANDOM}};
  btbTag_51 = _RAND_372[5:0];
  _RAND_373 = {1{`RANDOM}};
  btbTag_52 = _RAND_373[5:0];
  _RAND_374 = {1{`RANDOM}};
  btbTag_53 = _RAND_374[5:0];
  _RAND_375 = {1{`RANDOM}};
  btbTag_54 = _RAND_375[5:0];
  _RAND_376 = {1{`RANDOM}};
  btbTag_55 = _RAND_376[5:0];
  _RAND_377 = {1{`RANDOM}};
  btbTag_56 = _RAND_377[5:0];
  _RAND_378 = {1{`RANDOM}};
  btbTag_57 = _RAND_378[5:0];
  _RAND_379 = {1{`RANDOM}};
  btbTag_58 = _RAND_379[5:0];
  _RAND_380 = {1{`RANDOM}};
  btbTag_59 = _RAND_380[5:0];
  _RAND_381 = {1{`RANDOM}};
  btbTag_60 = _RAND_381[5:0];
  _RAND_382 = {1{`RANDOM}};
  btbTag_61 = _RAND_382[5:0];
  _RAND_383 = {1{`RANDOM}};
  btbTag_62 = _RAND_383[5:0];
  _RAND_384 = {1{`RANDOM}};
  btbTag_63 = _RAND_384[5:0];
  _RAND_385 = {1{`RANDOM}};
  btbMeta_0 = _RAND_385[2:0];
  _RAND_386 = {1{`RANDOM}};
  btbMeta_1 = _RAND_386[2:0];
  _RAND_387 = {1{`RANDOM}};
  btbMeta_2 = _RAND_387[2:0];
  _RAND_388 = {1{`RANDOM}};
  btbMeta_3 = _RAND_388[2:0];
  _RAND_389 = {1{`RANDOM}};
  btbMeta_4 = _RAND_389[2:0];
  _RAND_390 = {1{`RANDOM}};
  btbMeta_5 = _RAND_390[2:0];
  _RAND_391 = {1{`RANDOM}};
  btbMeta_6 = _RAND_391[2:0];
  _RAND_392 = {1{`RANDOM}};
  btbMeta_7 = _RAND_392[2:0];
  _RAND_393 = {1{`RANDOM}};
  btbMeta_8 = _RAND_393[2:0];
  _RAND_394 = {1{`RANDOM}};
  btbMeta_9 = _RAND_394[2:0];
  _RAND_395 = {1{`RANDOM}};
  btbMeta_10 = _RAND_395[2:0];
  _RAND_396 = {1{`RANDOM}};
  btbMeta_11 = _RAND_396[2:0];
  _RAND_397 = {1{`RANDOM}};
  btbMeta_12 = _RAND_397[2:0];
  _RAND_398 = {1{`RANDOM}};
  btbMeta_13 = _RAND_398[2:0];
  _RAND_399 = {1{`RANDOM}};
  btbMeta_14 = _RAND_399[2:0];
  _RAND_400 = {1{`RANDOM}};
  btbMeta_15 = _RAND_400[2:0];
  _RAND_401 = {1{`RANDOM}};
  btbMeta_16 = _RAND_401[2:0];
  _RAND_402 = {1{`RANDOM}};
  btbMeta_17 = _RAND_402[2:0];
  _RAND_403 = {1{`RANDOM}};
  btbMeta_18 = _RAND_403[2:0];
  _RAND_404 = {1{`RANDOM}};
  btbMeta_19 = _RAND_404[2:0];
  _RAND_405 = {1{`RANDOM}};
  btbMeta_20 = _RAND_405[2:0];
  _RAND_406 = {1{`RANDOM}};
  btbMeta_21 = _RAND_406[2:0];
  _RAND_407 = {1{`RANDOM}};
  btbMeta_22 = _RAND_407[2:0];
  _RAND_408 = {1{`RANDOM}};
  btbMeta_23 = _RAND_408[2:0];
  _RAND_409 = {1{`RANDOM}};
  btbMeta_24 = _RAND_409[2:0];
  _RAND_410 = {1{`RANDOM}};
  btbMeta_25 = _RAND_410[2:0];
  _RAND_411 = {1{`RANDOM}};
  btbMeta_26 = _RAND_411[2:0];
  _RAND_412 = {1{`RANDOM}};
  btbMeta_27 = _RAND_412[2:0];
  _RAND_413 = {1{`RANDOM}};
  btbMeta_28 = _RAND_413[2:0];
  _RAND_414 = {1{`RANDOM}};
  btbMeta_29 = _RAND_414[2:0];
  _RAND_415 = {1{`RANDOM}};
  btbMeta_30 = _RAND_415[2:0];
  _RAND_416 = {1{`RANDOM}};
  btbMeta_31 = _RAND_416[2:0];
  _RAND_417 = {1{`RANDOM}};
  btbMeta_32 = _RAND_417[2:0];
  _RAND_418 = {1{`RANDOM}};
  btbMeta_33 = _RAND_418[2:0];
  _RAND_419 = {1{`RANDOM}};
  btbMeta_34 = _RAND_419[2:0];
  _RAND_420 = {1{`RANDOM}};
  btbMeta_35 = _RAND_420[2:0];
  _RAND_421 = {1{`RANDOM}};
  btbMeta_36 = _RAND_421[2:0];
  _RAND_422 = {1{`RANDOM}};
  btbMeta_37 = _RAND_422[2:0];
  _RAND_423 = {1{`RANDOM}};
  btbMeta_38 = _RAND_423[2:0];
  _RAND_424 = {1{`RANDOM}};
  btbMeta_39 = _RAND_424[2:0];
  _RAND_425 = {1{`RANDOM}};
  btbMeta_40 = _RAND_425[2:0];
  _RAND_426 = {1{`RANDOM}};
  btbMeta_41 = _RAND_426[2:0];
  _RAND_427 = {1{`RANDOM}};
  btbMeta_42 = _RAND_427[2:0];
  _RAND_428 = {1{`RANDOM}};
  btbMeta_43 = _RAND_428[2:0];
  _RAND_429 = {1{`RANDOM}};
  btbMeta_44 = _RAND_429[2:0];
  _RAND_430 = {1{`RANDOM}};
  btbMeta_45 = _RAND_430[2:0];
  _RAND_431 = {1{`RANDOM}};
  btbMeta_46 = _RAND_431[2:0];
  _RAND_432 = {1{`RANDOM}};
  btbMeta_47 = _RAND_432[2:0];
  _RAND_433 = {1{`RANDOM}};
  btbMeta_48 = _RAND_433[2:0];
  _RAND_434 = {1{`RANDOM}};
  btbMeta_49 = _RAND_434[2:0];
  _RAND_435 = {1{`RANDOM}};
  btbMeta_50 = _RAND_435[2:0];
  _RAND_436 = {1{`RANDOM}};
  btbMeta_51 = _RAND_436[2:0];
  _RAND_437 = {1{`RANDOM}};
  btbMeta_52 = _RAND_437[2:0];
  _RAND_438 = {1{`RANDOM}};
  btbMeta_53 = _RAND_438[2:0];
  _RAND_439 = {1{`RANDOM}};
  btbMeta_54 = _RAND_439[2:0];
  _RAND_440 = {1{`RANDOM}};
  btbMeta_55 = _RAND_440[2:0];
  _RAND_441 = {1{`RANDOM}};
  btbMeta_56 = _RAND_441[2:0];
  _RAND_442 = {1{`RANDOM}};
  btbMeta_57 = _RAND_442[2:0];
  _RAND_443 = {1{`RANDOM}};
  btbMeta_58 = _RAND_443[2:0];
  _RAND_444 = {1{`RANDOM}};
  btbMeta_59 = _RAND_444[2:0];
  _RAND_445 = {1{`RANDOM}};
  btbMeta_60 = _RAND_445[2:0];
  _RAND_446 = {1{`RANDOM}};
  btbMeta_61 = _RAND_446[2:0];
  _RAND_447 = {1{`RANDOM}};
  btbMeta_62 = _RAND_447[2:0];
  _RAND_448 = {1{`RANDOM}};
  btbMeta_63 = _RAND_448[2:0];
  _RAND_449 = {1{`RANDOM}};
  io_ready_REG = _RAND_449[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
