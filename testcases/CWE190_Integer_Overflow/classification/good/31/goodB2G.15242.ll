@global_var_89340 = external constant [4 x i8]
@global_var_89348 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_50ea6:
  %stack_var_-24 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-24, align 2
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_89340, ptr nonnull %stack_var_-24)
  %3 = load i16, ptr %stack_var_-24, align 2
  %4 = icmp eq i16 %3, 32767
  br i1 %4, label %dec_label_pc_50f21, label %dec_label_pc_50f01

dec_label_pc_50f01:                               ; preds = %dec_label_pc_50ea6
  %5 = zext i16 %3 to i32
  %6 = mul i32 %5, 65536
  %sext = add i32 %6, 65536
  %7 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_50f30

dec_label_pc_50f21:                               ; preds = %dec_label_pc_50ea6
  call void @printLine(ptr @global_var_89348)
  br label %dec_label_pc_50f30

dec_label_pc_50f30:                               ; preds = %dec_label_pc_50f21, %dec_label_pc_50f01
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_50f45, label %dec_label_pc_50f40

dec_label_pc_50f40:                               ; preds = %dec_label_pc_50f30
  call void @__stack_chk_fail()
  br label %dec_label_pc_50f45

dec_label_pc_50f45:                               ; preds = %dec_label_pc_50f40, %dec_label_pc_50f30
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

