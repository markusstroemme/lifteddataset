@CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_45_badData = external local_unnamed_addr global ptr
@global_var_30136 = external constant [10 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_116e3:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %stack_var_-832 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_45_badData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-832 to ptr
  store i64 %3, ptr %4, align 8
  %5 = add i64 %0, -816
  %6 = add i64 %0, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_1171c

dec_label_pc_1171c:                               ; preds = %dec_label_pc_116e3, %dec_label_pc_1171c
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge24.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %6, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add i64 %7, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge24.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %15, label %dec_label_pc_1175f, label %dec_label_pc_1171c

dec_label_pc_1175f:                               ; preds = %dec_label_pc_1171c, %dec_label_pc_1175f
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %16 = ptrtoint ptr %storemerge3.reload to i64
  %17 = mul i64 %16, 8
  %18 = load ptr, ptr %stack_var_-832, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = add i64 %17, %19
  %21 = add i64 %17, %5
  %22 = inttoptr i64 %21 to ptr
  %23 = load i64, ptr %22, align 8
  %24 = inttoptr i64 %20 to ptr
  store i64 %23, ptr %24, align 8
  %25 = add i64 %16, 1
  %26 = inttoptr i64 %25 to ptr
  %27 = icmp ugt ptr %26, inttoptr (i64 99 to ptr)
  store ptr %26, ptr %storemerge3.reg2mem, align 8
  br i1 %27, label %dec_label_pc_1179c, label %dec_label_pc_1175f

dec_label_pc_1179c:                               ; preds = %dec_label_pc_1175f
  %28 = load ptr, ptr %stack_var_-832, align 8
  call void @printStructLine(ptr %28)
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %1, %29
  br i1 %30, label %dec_label_pc_117c0, label %dec_label_pc_117bb

dec_label_pc_117bb:                               ; preds = %dec_label_pc_1179c
  call void @__stack_chk_fail()
  br label %dec_label_pc_117c0

dec_label_pc_117c0:                               ; preds = %dec_label_pc_117bb, %dec_label_pc_1179c
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_117c2:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  store i64 %1, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_loop_45_badData, align 8
  call void @anon1()
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_1181b, label %dec_label_pc_11816

dec_label_pc_11816:                               ; preds = %dec_label_pc_117c2
  call void @__stack_chk_fail()
  br label %dec_label_pc_1181b

dec_label_pc_1181b:                               ; preds = %dec_label_pc_11816, %dec_label_pc_117c2
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_275a6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_30136, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

