@global_var_89848 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_89840 = external constant [3 x i8]

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_5d0bc:
  %0 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %0, align 4
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_89840)
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5d0fe:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_5d14b, label %dec_label_pc_5d118

dec_label_pc_5d118:                               ; preds = %dec_label_pc_5d0fe
  %4 = icmp sgt i32 %2, 1073741822
  br i1 %4, label %dec_label_pc_5d13c, label %dec_label_pc_5d125

dec_label_pc_5d125:                               ; preds = %dec_label_pc_5d118
  %5 = mul i32 %2, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_5d14b

dec_label_pc_5d13c:                               ; preds = %dec_label_pc_5d118
  call void @printLine(ptr @global_var_89848)
  br label %dec_label_pc_5d14b

dec_label_pc_5d14b:                               ; preds = %dec_label_pc_5d13c, %dec_label_pc_5d125, %dec_label_pc_5d0fe
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_5d2a0:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5d313, label %dec_label_pc_5d2dd

dec_label_pc_5d2dd:                               ; preds = %dec_label_pc_5d2a0
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5d313

dec_label_pc_5d313:                               ; preds = %dec_label_pc_5d2dd, %dec_label_pc_5d2a0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

