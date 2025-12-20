@global_var_34bf6 = external constant [10 x i8]
@global_var_4c024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_af1e:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_4c024, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_af71, label %dec_label_pc_af3d

dec_label_pc_af3d:                                ; preds = %dec_label_pc_af1e
  %3 = call ptr @malloc(i32 8)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_af5c, label %dec_label_pc_af52

dec_label_pc_af52:                                ; preds = %dec_label_pc_af3d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_af5c:                                ; preds = %dec_label_pc_af3d
  %6 = bitcast ptr %3 to ptr
  store i32 1, ptr %6, align 4
  %7 = ptrtoint ptr %3 to i64
  %8 = add i64 %7, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 2, ptr %9, align 4
  store ptr %6, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_af71

dec_label_pc_af71:                                ; preds = %dec_label_pc_af5c, %dec_label_pc_af1e
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-16.0.reload)
  %10 = bitcast ptr %stack_var_-16.0.reload to ptr
  call void @free(ptr %10)
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

