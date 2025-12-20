@global_var_93138 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_64dee:
  %0 = sext i32 %arg2 to i64
  store i64 %0, ptr %result, align 8
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, 1152921504606846976
  %7 = call i32 @rand()
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 35184372088832
  %10 = call i32 @rand()
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 1073741824
  %13 = call i32 @rand()
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 32768
  %16 = call i32 @rand()
  %17 = sext i32 %16 to i64
  %18 = sext i1 %3 to i64
  %19 = xor i64 %6, %18
  %20 = xor i64 %19, %9
  %21 = xor i64 %20, %12
  %22 = xor i64 %21, %15
  %storemerge = xor i64 %22, %17
  store i64 %storemerge, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_64eb8:
  %0 = icmp sgt ptr %result, null
  br i1 %0, label %dec_label_pc_64ed4, label %dec_label_pc_64f15

dec_label_pc_64ed4:                               ; preds = %dec_label_pc_64eb8
  %1 = icmp sgt ptr %result, inttoptr (i64 4611686018427387902 to ptr)
  br i1 %1, label %dec_label_pc_64f06, label %dec_label_pc_64eea

dec_label_pc_64eea:                               ; preds = %dec_label_pc_64ed4
  %2 = ptrtoint ptr %result to i64
  %3 = mul i64 %2, 2
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_64f15

dec_label_pc_64f06:                               ; preds = %dec_label_pc_64ed4
  call void @printLine(ptr @global_var_93138)
  br label %dec_label_pc_64f15

dec_label_pc_64f15:                               ; preds = %dec_label_pc_64eb8, %dec_label_pc_64f06, %dec_label_pc_64eea
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_6502b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-32, i32 0)
  call void @anon1(ptr nonnull %stack_var_-32)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_65081, label %dec_label_pc_6507c

dec_label_pc_6507c:                               ; preds = %dec_label_pc_6502b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_65081

dec_label_pc_65081:                               ; preds = %dec_label_pc_6507c, %dec_label_pc_6502b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

