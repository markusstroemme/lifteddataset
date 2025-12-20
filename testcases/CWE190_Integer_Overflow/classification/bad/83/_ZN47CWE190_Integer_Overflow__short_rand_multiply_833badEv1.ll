@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i16 %arg2) local_unnamed_addr {
dec_label_pc_5d7bc:
  %0 = bitcast ptr %result to ptr
  store i16 %arg2, ptr %0, align 2
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = call i32 @rand()
  %8 = xor i32 %7, %6
  %9 = sext i1 %3 to i32
  %storemerge.in = xor i32 %8, %9
  %10 = trunc i32 %storemerge.in to i16
  store i16 %10, ptr %0, align 2
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5d82c:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp slt i16 %2, 1
  br i1 %3, label %dec_label_pc_5d860, label %dec_label_pc_5d848

dec_label_pc_5d848:                               ; preds = %dec_label_pc_5d82c
  %4 = mul i16 %2, 2
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_5d860

dec_label_pc_5d860:                               ; preds = %dec_label_pc_5d848, %dec_label_pc_5d82c
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_5d98b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-20 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-20, i16 0)
  call void @anon1(ptr nonnull %stack_var_-20)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5d9de, label %dec_label_pc_5d9d9

dec_label_pc_5d9d9:                               ; preds = %dec_label_pc_5d98b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5d9de

dec_label_pc_5d9de:                               ; preds = %dec_label_pc_5d9d9, %dec_label_pc_5d98b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

