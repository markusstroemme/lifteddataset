@global_var_34bf6 = external constant [10 x i8]

define i32 @staticReturnsTrue.158() local_unnamed_addr {
dec_label_pc_b098:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_b0b6:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsTrue.158()
  %1 = icmp eq i32 %0, 0
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_b10c, label %dec_label_pc_b0d8

dec_label_pc_b0d8:                                ; preds = %dec_label_pc_b0b6
  %2 = call ptr @malloc(i32 8)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_b0f7, label %dec_label_pc_b0ed

dec_label_pc_b0ed:                                ; preds = %dec_label_pc_b0d8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b0f7:                                ; preds = %dec_label_pc_b0d8
  %5 = bitcast ptr %2 to ptr
  store i32 1, ptr %5, align 4
  %6 = ptrtoint ptr %2 to i64
  %7 = add i64 %6, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 4
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_b10c

dec_label_pc_b10c:                                ; preds = %dec_label_pc_b0f7, %dec_label_pc_b0b6
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-16.0.reload)
  %9 = bitcast ptr %stack_var_-16.0.reload to ptr
  call void @free(ptr %9)
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

