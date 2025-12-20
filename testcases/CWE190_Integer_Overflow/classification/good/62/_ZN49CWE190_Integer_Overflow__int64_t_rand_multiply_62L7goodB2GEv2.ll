@global_var_92bc8 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_63187:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = load i64, ptr %stack_var_-32, align 8
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %dec_label_pc_631fa, label %dec_label_pc_631bf

dec_label_pc_631bf:                               ; preds = %dec_label_pc_63187
  %5 = icmp sgt i64 %3, 4611686018427387902
  br i1 %5, label %dec_label_pc_631eb, label %dec_label_pc_631d2

dec_label_pc_631d2:                               ; preds = %dec_label_pc_631bf
  %6 = mul i64 %3, 2
  call void @printLongLongLine(i64 %6)
  br label %dec_label_pc_631fa

dec_label_pc_631eb:                               ; preds = %dec_label_pc_631bf
  call void @printLine(ptr @global_var_92bc8)
  br label %dec_label_pc_631fa

dec_label_pc_631fa:                               ; preds = %dec_label_pc_631eb, %dec_label_pc_631d2, %dec_label_pc_63187
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_6320f, label %dec_label_pc_6320a

dec_label_pc_6320a:                               ; preds = %dec_label_pc_631fa
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6320f

dec_label_pc_6320f:                               ; preds = %dec_label_pc_6320a, %dec_label_pc_631fa
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_632fa:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = zext i32 %3 to i64
  %5 = mul i64 %4, 1152921504606846976
  %6 = call i32 @rand()
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, 35184372088832
  %9 = call i32 @rand()
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 1073741824
  %12 = call i32 @rand()
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 32768
  %15 = call i32 @rand()
  %16 = sext i32 %15 to i64
  %17 = sext i1 %2 to i64
  %18 = xor i64 %5, %17
  %19 = xor i64 %18, %8
  %20 = xor i64 %19, %11
  %21 = xor i64 %20, %14
  %storemerge = xor i64 %21, %16
  %22 = ptrtoint ptr %arg1 to i64
  %23 = bitcast ptr %arg1 to ptr
  store i64 %storemerge, ptr %23, align 8
  ret i64 %22
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

