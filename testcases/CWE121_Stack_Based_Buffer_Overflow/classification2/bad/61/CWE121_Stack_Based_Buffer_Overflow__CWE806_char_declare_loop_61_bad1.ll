define void @anon0() local_unnamed_addr {
dec_label_pc_41fc8:
  %.reg2mem = alloca i64, align 8
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = call ptr @anon1(ptr nonnull %1)
  store i64 0, ptr %stack_var_-184, align 8
  %3 = call i32 @strlen(ptr %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_420b1, label %dec_label_pc_42072.lr.ph

dec_label_pc_42072.lr.ph:                         ; preds = %dec_label_pc_41fc8
  %5 = sext i32 %3 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %stack_var_-184 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_42072

dec_label_pc_42072:                               ; preds = %dec_label_pc_42072.lr.ph, %dec_label_pc_42072
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = add i64 %.reload, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = add i64 %.reload, %7
  %12 = inttoptr i64 %11 to ptr
  store i8 %10, ptr %12, align 1
  %13 = add nuw i64 %.reload, 1
  %14 = icmp ult i64 %13, %5
  store i64 %13, ptr %.reg2mem, align 8
  br i1 %14, label %dec_label_pc_42072, label %dec_label_pc_420b1

dec_label_pc_420b1:                               ; preds = %dec_label_pc_42072, %dec_label_pc_41fc8
  call void @printLine(ptr %2)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_420d9, label %dec_label_pc_420d4

dec_label_pc_420d4:                               ; preds = %dec_label_pc_420b1
  call void @__stack_chk_fail()
  br label %dec_label_pc_420d9

dec_label_pc_420d9:                               ; preds = %dec_label_pc_420d4, %dec_label_pc_420b1
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_42203:
  %0 = ptrtoint ptr %data to i64
  %1 = bitcast ptr %data to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret ptr %data
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

