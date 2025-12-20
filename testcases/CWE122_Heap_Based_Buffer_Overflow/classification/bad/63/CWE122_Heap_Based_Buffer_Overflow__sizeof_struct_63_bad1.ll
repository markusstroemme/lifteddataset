@global_var_34bf6 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_d237:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 8)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_d27b, label %dec_label_pc_d271

dec_label_pc_d271:                                ; preds = %dec_label_pc_d237
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d27b:                                ; preds = %dec_label_pc_d237
  store i32 1, ptr %2, align 4
  %5 = load ptr, ptr %stack_var_-24, align 8
  %6 = ptrtoint ptr %5 to i64
  %7 = add i64 %6, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 4
  call void @anon1(ptr nonnull %stack_var_-24)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_d2b1, label %dec_label_pc_d2ac

dec_label_pc_d2ac:                                ; preds = %dec_label_pc_d27b
  call void @__stack_chk_fail()
  br label %dec_label_pc_d2b1

dec_label_pc_d2b1:                                ; preds = %dec_label_pc_d2ac, %dec_label_pc_d27b
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_d344:
  %0 = bitcast ptr %dataPtr to ptr
  call void @printStructLine(ptr %0)
  %1 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %1)
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

