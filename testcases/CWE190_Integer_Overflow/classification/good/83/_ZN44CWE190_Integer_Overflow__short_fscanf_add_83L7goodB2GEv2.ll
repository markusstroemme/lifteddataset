@global_var_77db0 = external constant [4 x i8]
@global_var_77db8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i16 %arg2) local_unnamed_addr {
dec_label_pc_500c6:
  %0 = bitcast ptr %result to ptr
  store i16 %arg2, ptr %0, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_77db0, ptr %result)
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5010c:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp eq i16 %2, 32767
  br i1 %3, label %dec_label_pc_50144, label %dec_label_pc_50129

dec_label_pc_50129:                               ; preds = %dec_label_pc_5010c
  %4 = add i16 %2, 1
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_50153

dec_label_pc_50144:                               ; preds = %dec_label_pc_5010c
  call void @printLine(ptr @global_var_77db8)
  br label %dec_label_pc_50153

dec_label_pc_50153:                               ; preds = %dec_label_pc_50144, %dec_label_pc_50129
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_50256:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-20 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-20, i16 0)
  call void @anon1(ptr nonnull %stack_var_-20)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_502a9, label %dec_label_pc_502a4

dec_label_pc_502a4:                               ; preds = %dec_label_pc_50256
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_502a9

dec_label_pc_502a9:                               ; preds = %dec_label_pc_502a4, %dec_label_pc_50256
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

