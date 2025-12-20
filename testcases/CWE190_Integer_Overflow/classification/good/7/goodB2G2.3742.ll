@global_var_83368 = external constant [4 x i8]
@global_var_83388 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc02c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_16878:
  %.reg2mem = alloca i32, align 4
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_bc02c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_168c8, label %dec_label_pc_168a6

dec_label_pc_168a6:                               ; preds = %dec_label_pc_16878
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_83368, ptr nonnull %stack_var_-32)
  %.pre = load i32, ptr @global_var_bc02c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_168c8

dec_label_pc_168c8:                               ; preds = %dec_label_pc_168a6, %dec_label_pc_16878
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_16917, label %dec_label_pc_168d3

dec_label_pc_168d3:                               ; preds = %dec_label_pc_168c8
  %8 = load i64, ptr %stack_var_-32, align 8
  %9 = icmp eq i64 %8, 9223372036854775807
  br i1 %9, label %dec_label_pc_16908, label %dec_label_pc_168e6

dec_label_pc_168e6:                               ; preds = %dec_label_pc_168d3
  %10 = add i64 %8, 1
  store i64 %10, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %10)
  br label %dec_label_pc_16917

dec_label_pc_16908:                               ; preds = %dec_label_pc_168d3
  call void @printLine(ptr @global_var_83388)
  br label %dec_label_pc_16917

dec_label_pc_16917:                               ; preds = %dec_label_pc_16908, %dec_label_pc_168e6, %dec_label_pc_168c8
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1692c, label %dec_label_pc_16927

dec_label_pc_16927:                               ; preds = %dec_label_pc_16917
  call void @__stack_chk_fail()
  br label %dec_label_pc_1692c

dec_label_pc_1692c:                               ; preds = %dec_label_pc_16927, %dec_label_pc_16917
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

