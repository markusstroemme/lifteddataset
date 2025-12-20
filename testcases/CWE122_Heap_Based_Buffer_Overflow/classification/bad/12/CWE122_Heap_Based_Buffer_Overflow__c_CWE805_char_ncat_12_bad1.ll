define void @anon0() local_unnamed_addr {
dec_label_pc_2419b:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_241f4, label %dec_label_pc_241cc

dec_label_pc_241cc:                               ; preds = %dec_label_pc_2419b
  %3 = call ptr @malloc(i32 50)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_241eb, label %dec_label_pc_241e1

dec_label_pc_241e1:                               ; preds = %dec_label_pc_241cc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_241eb:                               ; preds = %dec_label_pc_241cc
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_2421a

dec_label_pc_241f4:                               ; preds = %dec_label_pc_2419b
  %7 = call ptr @malloc(i32 100)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_24213, label %dec_label_pc_24209

dec_label_pc_24209:                               ; preds = %dec_label_pc_241f4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_24213:                               ; preds = %dec_label_pc_241f4
  %10 = bitcast ptr %7 to ptr
  store i8 0, ptr %10, align 1
  store ptr %10, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_2421a

dec_label_pc_2421a:                               ; preds = %dec_label_pc_24213, %dec_label_pc_241eb
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %11 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %12 = bitcast ptr %stack_var_-120 to ptr
  %13 = call ptr @strncat(ptr nonnull %stack_var_-128.0.reload, ptr nonnull %12, i32 100)
  call void @printLine(ptr nonnull %stack_var_-128.0.reload)
  %14 = bitcast ptr %stack_var_-128.0.reload to ptr
  call void @free(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_24279, label %dec_label_pc_24274

dec_label_pc_24274:                               ; preds = %dec_label_pc_2421a
  call void @__stack_chk_fail()
  br label %dec_label_pc_24279

dec_label_pc_24279:                               ; preds = %dec_label_pc_24274, %dec_label_pc_2421a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3e3e1:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

