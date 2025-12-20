define void @anon1() local_unnamed_addr {
dec_label_pc_35ead:
  %stack_var_-72 = alloca i64, align 8
  %dataArray_-80 = alloca [5 x ptr], align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = insertvalue [5 x ptr] undef, ptr %1, 0
  store [5 x ptr] %2, ptr %dataArray_-80, align 8
  %3 = bitcast ptr %dataArray_-80 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = bitcast ptr %stack_var_-72 to ptr
  call void @anon0(ptr nonnull %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_35f00, label %dec_label_pc_35efb

dec_label_pc_35efb:                               ; preds = %dec_label_pc_35ead
  call void @__stack_chk_fail()
  br label %dec_label_pc_35f00

dec_label_pc_35f00:                               ; preds = %dec_label_pc_35efb, %dec_label_pc_35ead
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_35fa0:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = add i32 %6, 1
  %8 = inttoptr i64 %4 to ptr
  %9 = call ptr @memcpy(ptr %8, ptr nonnull %stack_var_-27, i32 %7)
  %10 = inttoptr i64 %4 to ptr
  call void @printLine(ptr %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_36027, label %dec_label_pc_36022

dec_label_pc_36022:                               ; preds = %dec_label_pc_35fa0
  call void @__stack_chk_fail()
  br label %dec_label_pc_36027

dec_label_pc_36027:                               ; preds = %dec_label_pc_36022, %dec_label_pc_35fa0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

