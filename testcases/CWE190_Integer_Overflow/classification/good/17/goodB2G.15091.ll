@global_var_89210 = external constant [4 x i8]
@global_var_89218 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_505d3:
  %k_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %k_-28, align 4
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_89210, ptr nonnull %k_-28)
  %3 = load i32, ptr %k_-28, align 4
  %4 = trunc i32 %3 to i16
  %5 = icmp eq i16 %4, 32767
  br i1 %5, label %dec_label_pc_505fd, label %dec_label_pc_505dd

dec_label_pc_505dd:                               ; preds = %dec_label_pc_505d3
  %6 = mul i32 %3, 65536
  %sext = add i32 %6, 65536
  %7 = ashr exact i32 %sext, 16
  store i32 %7, ptr %k_-28, align 4
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_50616

dec_label_pc_505fd:                               ; preds = %dec_label_pc_505d3
  call void @printLine(ptr @global_var_89218)
  br label %dec_label_pc_50616

dec_label_pc_50616:                               ; preds = %dec_label_pc_505dd, %dec_label_pc_505fd
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_5062b, label %dec_label_pc_50626

dec_label_pc_50626:                               ; preds = %dec_label_pc_50616
  call void @__stack_chk_fail()
  br label %dec_label_pc_5062b

dec_label_pc_5062b:                               ; preds = %dec_label_pc_50626, %dec_label_pc_50616
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

