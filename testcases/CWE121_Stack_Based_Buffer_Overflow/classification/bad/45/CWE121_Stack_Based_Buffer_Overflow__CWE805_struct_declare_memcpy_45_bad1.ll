@CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_memcpy_45_badData = external local_unnamed_addr global ptr
@global_var_30136 = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_164a7:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-832 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_memcpy_45_badData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-832 to ptr
  store i64 %3, ptr %4, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_164e0

dec_label_pc_164e0:                               ; preds = %dec_label_pc_164a7, %dec_label_pc_164e0
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
  br i1 %14, label %dec_label_pc_16516, label %dec_label_pc_164e0

dec_label_pc_16516:                               ; preds = %dec_label_pc_164e0
  %15 = load ptr, ptr %stack_var_-832, align 8
  %16 = bitcast ptr %15 to ptr
  %17 = call ptr @memcpy(ptr %16, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %15)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_16558, label %dec_label_pc_16553

dec_label_pc_16553:                               ; preds = %dec_label_pc_16516
  call void @__stack_chk_fail()
  br label %dec_label_pc_16558

dec_label_pc_16558:                               ; preds = %dec_label_pc_16553, %dec_label_pc_16516
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1655a:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  store i64 %1, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_struct_declare_memcpy_45_badData, align 8
  call void @anon1()
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_165b3, label %dec_label_pc_165ae

dec_label_pc_165ae:                               ; preds = %dec_label_pc_1655a
  call void @__stack_chk_fail()
  br label %dec_label_pc_165b3

dec_label_pc_165b3:                               ; preds = %dec_label_pc_165ae, %dec_label_pc_1655a
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

