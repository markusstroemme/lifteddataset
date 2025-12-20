@global_var_33cdf = external constant [21 x i8]
@global_var_34bf6 = external constant [10 x i8]
@global_var_4c03c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_b9f5:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_4c03c, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_ba25, label %dec_label_pc_ba14

dec_label_pc_ba14:                                ; preds = %dec_label_pc_b9f5
  call void @printLine(ptr @global_var_33cdf)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_ba59

dec_label_pc_ba25:                                ; preds = %dec_label_pc_b9f5
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_ba44, label %dec_label_pc_ba3a

dec_label_pc_ba3a:                                ; preds = %dec_label_pc_ba25
  call void @exit(i32 -1)
  unreachable

dec_label_pc_ba44:                                ; preds = %dec_label_pc_ba25
  %5 = bitcast ptr %2 to ptr
  store i32 1, ptr %5, align 4
  %6 = ptrtoint ptr %2 to i64
  %7 = add i64 %6, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 4
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_ba59

dec_label_pc_ba59:                                ; preds = %dec_label_pc_ba44, %dec_label_pc_ba14
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-16.0.reload)
  %9 = bitcast ptr %stack_var_-16.0.reload to ptr
  call void @free(ptr %9)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_2b879:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_2b89c, label %dec_label_pc_2b890

dec_label_pc_2b890:                               ; preds = %dec_label_pc_2b879
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_2b89c

dec_label_pc_2b89c:                               ; preds = %dec_label_pc_2b890, %dec_label_pc_2b879
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_2bb08:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_34bf6, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

