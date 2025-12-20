@global_var_b7335 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_d92f:
  %dataBadBuffer_-128 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-128, align 8
  %4 = bitcast ptr %dataBadBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = bitcast ptr %dataBadBuffer_-128 to ptr
  call void @anon0(ptr nonnull %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_d97a, label %dec_label_pc_d975

dec_label_pc_d975:                                ; preds = %dec_label_pc_d92f
  call void @__stack_chk_fail()
  br label %dec_label_pc_d97a

dec_label_pc_d97a:                                ; preds = %dec_label_pc_d975, %dec_label_pc_d92f
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_da25:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %dataPtr to ptr
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %2, i32 100, ptr @global_var_b7335, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_dab7, label %dec_label_pc_dab2

dec_label_pc_dab2:                                ; preds = %dec_label_pc_da25
  call void @__stack_chk_fail()
  br label %dec_label_pc_dab7

dec_label_pc_dab7:                                ; preds = %dec_label_pc_dab2, %dec_label_pc_da25
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

