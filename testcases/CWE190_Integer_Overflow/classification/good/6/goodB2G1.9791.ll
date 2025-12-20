@global_var_867b4 = external constant [3 x i8]
@global_var_867d0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3635d:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_867b4, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %stack_var_-24, align 8
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %4, 2147483647
  br i1 %5, label %dec_label_pc_363eb, label %dec_label_pc_363d0

dec_label_pc_363d0:                               ; preds = %dec_label_pc_3635d
  %6 = mul i64 %3, 4294967296
  %sext = add i64 %6, 4294967296
  %7 = ashr exact i64 %sext, 32
  store i64 %7, ptr %stack_var_-24, align 8
  %8 = trunc i64 %7 to i32
  call void @printIntLine(i32 %8)
  br label %dec_label_pc_363fa

dec_label_pc_363eb:                               ; preds = %dec_label_pc_3635d
  call void @printLine(ptr @global_var_867d0)
  br label %dec_label_pc_363fa

dec_label_pc_363fa:                               ; preds = %dec_label_pc_363eb, %dec_label_pc_363d0
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_3640f, label %dec_label_pc_3640a

dec_label_pc_3640a:                               ; preds = %dec_label_pc_363fa
  call void @__stack_chk_fail()
  br label %dec_label_pc_3640f

dec_label_pc_3640f:                               ; preds = %dec_label_pc_3640a, %dec_label_pc_363fa
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

