@global_var_8abd0 = external constant [3 x i8]
@global_var_8abe8 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc088 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5cff2:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_bc088, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5d07c, label %dec_label_pc_5d040

dec_label_pc_5d040:                               ; preds = %dec_label_pc_5cff2
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_8abd0, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_bc088, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_5d07c, label %dec_label_pc_5d04a

dec_label_pc_5d04a:                               ; preds = %dec_label_pc_5d040
  %6 = load i32, ptr %stack_var_-24, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_5d06d, label %dec_label_pc_5d052

dec_label_pc_5d052:                               ; preds = %dec_label_pc_5d04a
  %8 = add i32 %6, 1
  store i32 %8, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %8)
  br label %dec_label_pc_5d07c

dec_label_pc_5d06d:                               ; preds = %dec_label_pc_5d04a
  call void @printLine(ptr @global_var_8abe8)
  br label %dec_label_pc_5d07c

dec_label_pc_5d07c:                               ; preds = %dec_label_pc_5cff2, %dec_label_pc_5d06d, %dec_label_pc_5d052, %dec_label_pc_5d040
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_5d091, label %dec_label_pc_5d08c

dec_label_pc_5d08c:                               ; preds = %dec_label_pc_5d07c
  call void @__stack_chk_fail()
  br label %dec_label_pc_5d091

dec_label_pc_5d091:                               ; preds = %dec_label_pc_5d08c, %dec_label_pc_5d07c
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

