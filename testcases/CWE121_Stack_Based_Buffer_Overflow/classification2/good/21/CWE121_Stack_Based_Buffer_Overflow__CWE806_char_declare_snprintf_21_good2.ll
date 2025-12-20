@global_var_1321b = external constant [3 x i8]
@goodG2B2Static = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_63e7:
  %0 = load i32, ptr @goodG2B2Static, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_6422, label %dec_label_pc_6401

dec_label_pc_6401:                                ; preds = %dec_label_pc_63e7
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_6422

dec_label_pc_6422:                                ; preds = %dec_label_pc_6401, %dec_label_pc_63e7
  ret ptr %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_6428:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @goodG2B2Static, align 4
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = call ptr @anon0(ptr nonnull %1)
  store i64 0, ptr %stack_var_-184, align 8
  %3 = call i32 @strlen(ptr %2)
  %4 = bitcast ptr %stack_var_-184 to ptr
  %5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %4, i32 %3, ptr @global_var_1321b, ptr %2)
  call void @printLine(ptr %2)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_6514, label %dec_label_pc_650f

dec_label_pc_650f:                                ; preds = %dec_label_pc_6428
  call void @__stack_chk_fail()
  br label %dec_label_pc_6514

dec_label_pc_6514:                                ; preds = %dec_label_pc_650f, %dec_label_pc_6428
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_feec:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_ff0f, label %dec_label_pc_ff03

dec_label_pc_ff03:                                ; preds = %dec_label_pc_feec
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_ff0f

dec_label_pc_ff0f:                                ; preds = %dec_label_pc_ff03, %dec_label_pc_feec
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

