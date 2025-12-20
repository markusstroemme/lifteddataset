@global_var_44d70 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_8201:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-72.0.in.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_8251, label %dec_label_pc_8232

dec_label_pc_8232:                                ; preds = %dec_label_pc_8201
  %3 = call ptr @malloc(i32 10)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-72.0.in.reg2mem, align 8
  br i1 %5, label %dec_label_pc_8270, label %dec_label_pc_8247

dec_label_pc_8247:                                ; preds = %dec_label_pc_8232
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8251:                                ; preds = %dec_label_pc_8201
  %6 = call ptr @malloc(i32 40)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  store ptr %6, ptr %stack_var_-72.0.in.reg2mem, align 8
  br i1 %8, label %dec_label_pc_8270, label %dec_label_pc_8266

dec_label_pc_8266:                                ; preds = %dec_label_pc_8251
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8270:                                ; preds = %dec_label_pc_8251, %dec_label_pc_8232
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-72.0.in.reload = load ptr, ptr %stack_var_-72.0.in.reg2mem, align 8
  %stack_var_-72.0 = ptrtoint ptr %stack_var_-72.0.in.reload to i64
  %10 = add i64 %9, -48
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_82a2

dec_label_pc_82a2:                                ; preds = %dec_label_pc_82a2, %dec_label_pc_8270
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %11 = mul i64 %storemerge1.reload, 4
  %12 = add i64 %11, %stack_var_-72.0
  %13 = add i64 %10, %11
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i64 %12 to ptr
  store i32 %15, ptr %16, align 4
  %17 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %17, 10
  store i64 %17, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_82cb, label %dec_label_pc_82a2

dec_label_pc_82cb:                                ; preds = %dec_label_pc_82a2
  %18 = bitcast ptr %stack_var_-72.0.in.reload to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  call void @free(ptr %stack_var_-72.0.in.reload)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_82f9, label %dec_label_pc_82f4

dec_label_pc_82f4:                                ; preds = %dec_label_pc_82cb
  call void @__stack_chk_fail()
  br label %dec_label_pc_82f9

dec_label_pc_82f9:                                ; preds = %dec_label_pc_82f4, %dec_label_pc_82cb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_38066:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

