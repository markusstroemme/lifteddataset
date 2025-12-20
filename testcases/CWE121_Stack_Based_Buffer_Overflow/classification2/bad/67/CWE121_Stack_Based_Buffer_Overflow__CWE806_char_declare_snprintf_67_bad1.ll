@global_var_1327b = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_8eea:
  %dataBuffer_-128 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBuffer_-136 = alloca [100 x i8], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [100 x i8] undef, i8 %2, 0
  store [100 x i8] %3, ptr %dataBuffer_-128, align 8
  %4 = bitcast ptr %dataBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 99)
  %8 = add i64 %5, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = load i64, ptr %4, align 8
  %11 = trunc i64 %10 to i8
  %12 = insertvalue [100 x i8] undef, i8 %11, 0
  store [100 x i8] %12, ptr %dataBuffer_-136, align 8
  %13 = bitcast ptr %dataBuffer_-136 to ptr
  %14 = load i64, ptr %13, align 8
  call void @anon1(i64 %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_8f57, label %dec_label_pc_8f52

dec_label_pc_8f52:                                ; preds = %dec_label_pc_8eea
  call void @__stack_chk_fail()
  br label %dec_label_pc_8f57

dec_label_pc_8f57:                                ; preds = %dec_label_pc_8f52, %dec_label_pc_8eea
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_8fdd:
  %stack_var_-72 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %2 = call i32 @strlen(ptr %0)
  %3 = bitcast ptr %stack_var_-72 to ptr
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %3, i32 %2, ptr @global_var_1327b, ptr %0)
  call void @printLine(ptr %0)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_9089, label %dec_label_pc_9084

dec_label_pc_9084:                                ; preds = %dec_label_pc_8fdd
  call void @__stack_chk_fail()
  br label %dec_label_pc_9089

dec_label_pc_9089:                                ; preds = %dec_label_pc_9084, %dec_label_pc_8fdd
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

