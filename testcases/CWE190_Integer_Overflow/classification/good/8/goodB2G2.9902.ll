@global_var_86858 = external constant [3 x i8]
@global_var_86870 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.987() local_unnamed_addr {
dec_label_pc_36839:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_369a3:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = call i32 @staticReturnsTrue.987()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_369f5, label %dec_label_pc_369d3

dec_label_pc_369d3:                               ; preds = %dec_label_pc_369a3
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_86858, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_369f5

dec_label_pc_369f5:                               ; preds = %dec_label_pc_369d3, %dec_label_pc_369a3
  %5 = call i32 @staticReturnsTrue.987()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_36a37, label %dec_label_pc_36a03

dec_label_pc_36a03:                               ; preds = %dec_label_pc_369f5
  %7 = load i64, ptr %stack_var_-24, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 2147483647
  br i1 %9, label %dec_label_pc_36a28, label %dec_label_pc_36a0d

dec_label_pc_36a0d:                               ; preds = %dec_label_pc_36a03
  %10 = mul i64 %7, 4294967296
  %sext = add i64 %10, 4294967296
  %11 = ashr exact i64 %sext, 32
  store i64 %11, ptr %stack_var_-24, align 8
  %12 = trunc i64 %11 to i32
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_36a37

dec_label_pc_36a28:                               ; preds = %dec_label_pc_36a03
  call void @printLine(ptr @global_var_86870)
  br label %dec_label_pc_36a37

dec_label_pc_36a37:                               ; preds = %dec_label_pc_36a28, %dec_label_pc_36a0d, %dec_label_pc_369f5
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_36a4c, label %dec_label_pc_36a47

dec_label_pc_36a47:                               ; preds = %dec_label_pc_36a37
  call void @__stack_chk_fail()
  br label %dec_label_pc_36a4c

dec_label_pc_36a4c:                               ; preds = %dec_label_pc_36a47, %dec_label_pc_36a37
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

