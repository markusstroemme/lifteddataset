@goodG2B2Static = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_5dcd:
  %0 = load i32, ptr @goodG2B2Static, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5e08, label %dec_label_pc_5de7

dec_label_pc_5de7:                                ; preds = %dec_label_pc_5dcd
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_5e08

dec_label_pc_5e08:                                ; preds = %dec_label_pc_5de7, %dec_label_pc_5dcd
  ret ptr %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5e0e:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @goodG2B2Static, align 4
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = call ptr @anon0(ptr nonnull %1)
  store i64 0, ptr %stack_var_-184, align 8
  %3 = bitcast ptr %stack_var_-184 to ptr
  %4 = call ptr @strcpy(ptr nonnull %3, ptr %2)
  call void @printLine(ptr %2)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_5edc, label %dec_label_pc_5ed7

dec_label_pc_5ed7:                                ; preds = %dec_label_pc_5e0e
  call void @__stack_chk_fail()
  br label %dec_label_pc_5edc

dec_label_pc_5edc:                                ; preds = %dec_label_pc_5ed7, %dec_label_pc_5e0e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_f209:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_f22c, label %dec_label_pc_f220

dec_label_pc_f220:                                ; preds = %dec_label_pc_f209
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_f22c

dec_label_pc_f22c:                                ; preds = %dec_label_pc_f220, %dec_label_pc_f209
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

