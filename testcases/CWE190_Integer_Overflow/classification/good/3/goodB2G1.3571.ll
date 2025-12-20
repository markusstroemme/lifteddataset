@global_var_83218 = external constant [4 x i8]
@global_var_83220 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_15c97:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83218, ptr nonnull %stack_var_-32)
  %3 = load i64, ptr %stack_var_-32, align 8
  %4 = icmp eq i64 %3, 9223372036854775807
  br i1 %4, label %dec_label_pc_15d11, label %dec_label_pc_15cef

dec_label_pc_15cef:                               ; preds = %dec_label_pc_15c97
  %5 = add i64 %3, 1
  store i64 %5, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_15d20

dec_label_pc_15d11:                               ; preds = %dec_label_pc_15c97
  call void @printLine(ptr @global_var_83220)
  br label %dec_label_pc_15d20

dec_label_pc_15d20:                               ; preds = %dec_label_pc_15d11, %dec_label_pc_15cef
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_15d35, label %dec_label_pc_15d30

dec_label_pc_15d30:                               ; preds = %dec_label_pc_15d20
  call void @__stack_chk_fail()
  br label %dec_label_pc_15d35

dec_label_pc_15d35:                               ; preds = %dec_label_pc_15d30, %dec_label_pc_15d20
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

