@global_var_34bf6 = external constant [10 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_d14f:
  %0 = call ptr @anon0(ptr null)
  call void @printStructLine(ptr %0)
  %1 = bitcast ptr %0 to ptr
  call void @free(ptr %1)
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_d1ed:
  %0 = call ptr @malloc(i32 8)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_d21c, label %dec_label_pc_d212

dec_label_pc_d212:                                ; preds = %dec_label_pc_d1ed
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d21c:                                ; preds = %dec_label_pc_d1ed
  %3 = bitcast ptr %0 to ptr
  store i32 1, ptr %3, align 4
  %4 = ptrtoint ptr %0 to i64
  %5 = add i64 %4, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 2, ptr %6, align 4
  ret ptr %3
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

