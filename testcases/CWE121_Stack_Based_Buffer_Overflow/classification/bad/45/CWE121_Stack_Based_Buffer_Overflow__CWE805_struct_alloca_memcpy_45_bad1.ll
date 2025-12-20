@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_45_badData = external local_unnamed_addr global ptr
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_7012d:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-832 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_45_badData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-832 to ptr
  store i64 %3, ptr %4, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_70166

dec_label_pc_70166:                               ; preds = %dec_label_pc_7012d, %dec_label_pc_70166
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge2.reload to i64
  %6 = mul i64 %5, 8
  %7 = add i64 %6, %0
  %8 = add i64 %7, -816
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %7, -812
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add i64 %5, 1
  %13 = inttoptr i64 %12 to ptr
  %14 = icmp ugt ptr %13, inttoptr (i64 99 to ptr)
  store ptr %13, ptr %storemerge2.reg2mem, align 8
  br i1 %14, label %dec_label_pc_7019c, label %dec_label_pc_70166

dec_label_pc_7019c:                               ; preds = %dec_label_pc_70166
  %15 = load ptr, ptr %stack_var_-832, align 8
  %16 = bitcast ptr %15 to ptr
  %17 = call ptr @memcpy(ptr %16, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %15)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_701de, label %dec_label_pc_701d9

dec_label_pc_701d9:                               ; preds = %dec_label_pc_7019c
  call void @__stack_chk_fail()
  br label %dec_label_pc_701de

dec_label_pc_701de:                               ; preds = %dec_label_pc_701d9, %dec_label_pc_7019c
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_701e0:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_7022b

dec_label_pc_7022b:                               ; preds = %dec_label_pc_7022b, %dec_label_pc_701e0
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_70242, label %dec_label_pc_7022b

dec_label_pc_70242:                               ; preds = %dec_label_pc_7022b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %8 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_702af

dec_label_pc_702af:                               ; preds = %dec_label_pc_702af, %dec_label_pc_70242
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %9 = icmp eq i64 %rsp.1.reload, %8
  %10 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %10, ptr %rsp.1.reg2mem, align 8
  br i1 %9, label %dec_label_pc_702c6, label %dec_label_pc_702af

dec_label_pc_702c6:                               ; preds = %dec_label_pc_702af
  store i64 %6, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_alloca_memcpy_45_badData, align 8
  call void @anon1()
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_70335, label %dec_label_pc_70330

dec_label_pc_70330:                               ; preds = %dec_label_pc_702c6
  call void @__stack_chk_fail()
  br label %dec_label_pc_70335

dec_label_pc_70335:                               ; preds = %dec_label_pc_70330, %dec_label_pc_702c6
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_9cdaa:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_bb9d2, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

