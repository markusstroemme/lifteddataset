@global_var_83470 = external constant [4 x i8]
@global_var_83490 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_17173:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_bc0a0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_17210, label %dec_label_pc_171c2

dec_label_pc_171c2:                               ; preds = %dec_label_pc_17173
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_83470, ptr nonnull %stack_var_-32)
  %.pr = load i32, ptr @global_var_bc0a0, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_17210, label %dec_label_pc_171cc

dec_label_pc_171cc:                               ; preds = %dec_label_pc_171c2
  %6 = load i64, ptr %stack_var_-32, align 8
  %7 = icmp eq i64 %6, 9223372036854775807
  br i1 %7, label %dec_label_pc_17201, label %dec_label_pc_171df

dec_label_pc_171df:                               ; preds = %dec_label_pc_171cc
  %8 = add i64 %6, 1
  store i64 %8, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %8)
  br label %dec_label_pc_17210

dec_label_pc_17201:                               ; preds = %dec_label_pc_171cc
  call void @printLine(ptr @global_var_83490)
  br label %dec_label_pc_17210

dec_label_pc_17210:                               ; preds = %dec_label_pc_17173, %dec_label_pc_17201, %dec_label_pc_171df, %dec_label_pc_171c2
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_17225, label %dec_label_pc_17220

dec_label_pc_17220:                               ; preds = %dec_label_pc_17210
  call void @__stack_chk_fail()
  br label %dec_label_pc_17225

dec_label_pc_17225:                               ; preds = %dec_label_pc_17220, %dec_label_pc_17210
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

