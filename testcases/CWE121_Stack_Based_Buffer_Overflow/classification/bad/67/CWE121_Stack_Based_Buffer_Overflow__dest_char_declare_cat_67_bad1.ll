define void @anon0() local_unnamed_addr {
dec_label_pc_1c211:
  %dataBadBuffer_-128 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-136 = alloca [50 x i8], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-128, align 8
  %4 = bitcast ptr %dataBadBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = load i64, ptr %4, align 8
  %8 = trunc i64 %7 to i8
  %9 = insertvalue [50 x i8] undef, i8 %8, 0
  store [50 x i8] %9, ptr %dataBadBuffer_-136, align 8
  %10 = bitcast ptr %dataBadBuffer_-136 to ptr
  %11 = load i64, ptr %10, align 8
  call void @anon1(i64 %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1c264, label %dec_label_pc_1c25f

dec_label_pc_1c25f:                               ; preds = %dec_label_pc_1c211
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c264

dec_label_pc_1c264:                               ; preds = %dec_label_pc_1c25f, %dec_label_pc_1c211
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1c2d0:
  %stack_var_-120 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strcat(ptr %0, ptr nonnull %3)
  call void @printLine(ptr %0)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_1c34e, label %dec_label_pc_1c349

dec_label_pc_1c349:                               ; preds = %dec_label_pc_1c2d0
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c34e

dec_label_pc_1c34e:                               ; preds = %dec_label_pc_1c349, %dec_label_pc_1c2d0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

