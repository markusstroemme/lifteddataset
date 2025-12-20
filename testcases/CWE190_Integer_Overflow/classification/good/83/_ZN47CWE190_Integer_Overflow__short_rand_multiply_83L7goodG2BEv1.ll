@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i16 %arg2) local_unnamed_addr {
dec_label_pc_5d92a:
  %0 = bitcast ptr %result to ptr
  store i16 2, ptr %0, align 2
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5d954:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp slt i16 %2, 1
  br i1 %3, label %dec_label_pc_5d988, label %dec_label_pc_5d970

dec_label_pc_5d970:                               ; preds = %dec_label_pc_5d954
  %4 = mul i16 %2, 2
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_5d988

dec_label_pc_5d988:                               ; preds = %dec_label_pc_5d970, %dec_label_pc_5d954
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_5d9e0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-20 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-20, i16 0)
  call void @anon1(ptr nonnull %stack_var_-20)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5da33, label %dec_label_pc_5da2e

dec_label_pc_5da2e:                               ; preds = %dec_label_pc_5d9e0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5da33

dec_label_pc_5da33:                               ; preds = %dec_label_pc_5da2e, %dec_label_pc_5d9e0
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

