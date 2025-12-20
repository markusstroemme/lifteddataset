@global_var_777d8 = external constant [4 x i8]
@global_var_777e0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4a2e7:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_777d8, ptr nonnull %stack_var_-30)
  %3 = bitcast ptr %stack_var_-30 to ptr
  %4 = load i16, ptr %3, align 8
  %5 = icmp eq i16 %4, 32767
  br i1 %5, label %dec_label_pc_4a35d, label %dec_label_pc_4a345

dec_label_pc_4a345:                               ; preds = %dec_label_pc_4a2e7
  %6 = zext i16 %4 to i32
  %7 = mul i32 %6, 65536
  %sext = add i32 %7, 65536
  %8 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %8)
  br label %dec_label_pc_4a36c

dec_label_pc_4a35d:                               ; preds = %dec_label_pc_4a2e7
  call void @printLine(ptr @global_var_777e0)
  br label %dec_label_pc_4a36c

dec_label_pc_4a36c:                               ; preds = %dec_label_pc_4a35d, %dec_label_pc_4a345
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_4a381, label %dec_label_pc_4a37c

dec_label_pc_4a37c:                               ; preds = %dec_label_pc_4a36c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4a381

dec_label_pc_4a381:                               ; preds = %dec_label_pc_4a37c, %dec_label_pc_4a36c
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

