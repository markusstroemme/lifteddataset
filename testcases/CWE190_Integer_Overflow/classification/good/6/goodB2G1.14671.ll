@global_var_88e94 = external constant [4 x i8]
@global_var_88eb0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_4e857:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_88e94, ptr nonnull %stack_var_-20)
  %3 = load i16, ptr %stack_var_-20, align 2
  %4 = icmp eq i16 %3, 32767
  br i1 %4, label %dec_label_pc_4e8e9, label %dec_label_pc_4e8c9

dec_label_pc_4e8c9:                               ; preds = %dec_label_pc_4e857
  %5 = add i16 %3, 1
  store i16 %5, ptr %stack_var_-20, align 2
  %6 = sext i16 %5 to i32
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_4e8f8

dec_label_pc_4e8e9:                               ; preds = %dec_label_pc_4e857
  call void @printLine(ptr @global_var_88eb0)
  br label %dec_label_pc_4e8f8

dec_label_pc_4e8f8:                               ; preds = %dec_label_pc_4e8e9, %dec_label_pc_4e8c9
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_4e90d, label %dec_label_pc_4e908

dec_label_pc_4e908:                               ; preds = %dec_label_pc_4e8f8
  call void @__stack_chk_fail()
  br label %dec_label_pc_4e90d

dec_label_pc_4e90d:                               ; preds = %dec_label_pc_4e908, %dec_label_pc_4e8f8
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

