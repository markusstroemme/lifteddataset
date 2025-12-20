@global_var_320 = external constant [20 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_c7ff:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-840 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-840, align 8
  %2 = bitcast ptr %stack_var_-840 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_c844

dec_label_pc_c844:                                ; preds = %dec_label_pc_c844, %dec_label_pc_c7ff
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %4 = mul i64 %storemerge1.reload, 8
  %5 = add i64 %4, %0
  %6 = add i64 %5, -816
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 8
  %8 = add i64 %5, -812
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c87a, label %dec_label_pc_c844

dec_label_pc_c87a:                                ; preds = %dec_label_pc_c844
  %11 = load i64, ptr %stack_var_-840, align 8
  %12 = inttoptr i64 %11 to ptr
  %13 = call ptr @memcpy(ptr %12, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %14 = load i64, ptr %stack_var_-840, align 8
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %17 = load i64, ptr %stack_var_-840, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %dec_label_pc_c8c3, label %dec_label_pc_c8b4

dec_label_pc_c8b4:                                ; preds = %dec_label_pc_c87a
  %19 = ptrtoint ptr %stack_var_-824 to i64
  %20 = inttoptr i64 %17 to ptr
  %21 = and i64 %19, 4294967288
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_c8c3

dec_label_pc_c8c3:                                ; preds = %dec_label_pc_c8b4, %dec_label_pc_c87a
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %1, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_c8d8, label %dec_label_pc_c8d3

dec_label_pc_c8d3:                                ; preds = %dec_label_pc_c8c3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c8d8

dec_label_pc_c8d8:                                ; preds = %dec_label_pc_c8d3, %dec_label_pc_c8c3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_c911:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 %0
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

