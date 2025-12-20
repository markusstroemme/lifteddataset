@global_var_86858 = external constant [3 x i8]
@global_var_8685b = external constant [21 x i8]
@global_var_86870 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.987() local_unnamed_addr {
dec_label_pc_36839:
  ret i32 1
}

define i32 @staticReturnsFalse.988() local_unnamed_addr {
dec_label_pc_36848:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_368e7:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = call i32 @staticReturnsTrue.987()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_36939, label %dec_label_pc_36917

dec_label_pc_36917:                               ; preds = %dec_label_pc_368e7
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_86858, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_36939

dec_label_pc_36939:                               ; preds = %dec_label_pc_36917, %dec_label_pc_368e7
  %5 = call i32 @staticReturnsFalse.988()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_36958, label %dec_label_pc_36947

dec_label_pc_36947:                               ; preds = %dec_label_pc_36939
  call void @printLine(ptr @global_var_8685b)
  br label %dec_label_pc_3698c

dec_label_pc_36958:                               ; preds = %dec_label_pc_36939
  %7 = load i64, ptr %stack_var_-24, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 2147483647
  br i1 %9, label %dec_label_pc_3697d, label %dec_label_pc_36962

dec_label_pc_36962:                               ; preds = %dec_label_pc_36958
  %10 = mul i64 %7, 4294967296
  %sext = add i64 %10, 4294967296
  %11 = ashr exact i64 %sext, 32
  store i64 %11, ptr %stack_var_-24, align 8
  %12 = trunc i64 %11 to i32
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_3698c

dec_label_pc_3697d:                               ; preds = %dec_label_pc_36958
  call void @printLine(ptr @global_var_86870)
  br label %dec_label_pc_3698c

dec_label_pc_3698c:                               ; preds = %dec_label_pc_3697d, %dec_label_pc_36962, %dec_label_pc_36947
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_369a1, label %dec_label_pc_3699c

dec_label_pc_3699c:                               ; preds = %dec_label_pc_3698c
  call void @__stack_chk_fail()
  br label %dec_label_pc_369a1

dec_label_pc_369a1:                               ; preds = %dec_label_pc_3699c, %dec_label_pc_3698c
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

