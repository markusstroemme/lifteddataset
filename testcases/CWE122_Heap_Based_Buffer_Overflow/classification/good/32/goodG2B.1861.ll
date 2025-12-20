@global_var_34bf6 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_c4c7:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 8)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_c524, label %dec_label_pc_c51a

dec_label_pc_c51a:                                ; preds = %dec_label_pc_c4c7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c524:                                ; preds = %dec_label_pc_c4c7
  %4 = bitcast ptr %1 to ptr
  store i32 1, ptr %4, align 4
  %5 = ptrtoint ptr %1 to i64
  %6 = add i64 %5, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  call void @printStructLine(ptr %4)
  call void @free(ptr %1)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_c57c, label %dec_label_pc_c577

dec_label_pc_c577:                                ; preds = %dec_label_pc_c524
  call void @__stack_chk_fail()
  br label %dec_label_pc_c57c

dec_label_pc_c57c:                                ; preds = %dec_label_pc_c577, %dec_label_pc_c524
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

