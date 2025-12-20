@global_var_1000 = external global ptr
@global_var_bf700 = external constant [43 x i32]
@0 = external global i32
@global_var_fff = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_935ea:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %2 = bitcast ptr %stack_var_-40 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = load ptr, ptr %stack_var_-40, align 8
  %5 = bitcast ptr %4 to ptr
  %6 = call i32 @strlen(ptr %5)
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = add nsw i64 %8, 27
  %10 = udiv i64 %9, 16
  %11 = mul i64 %10, 16
  %12 = and i64 %11, -4096
  %13 = sub i64 %0, %12
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_93666

dec_label_pc_93666:                               ; preds = %dec_label_pc_93666, %dec_label_pc_935ea
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %14 = icmp eq i64 %rsp.0.reload, %13
  %15 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %15, ptr %rsp.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_9367d, label %dec_label_pc_93666

dec_label_pc_9367d:                               ; preds = %dec_label_pc_93666
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %16 = and i64 %11, %constexpr
  %17 = sub nsw i64 15, %16
  %18 = add i64 %17, %13
  %19 = and i64 %18, -16
  %20 = load ptr, ptr %stack_var_-40, align 8
  %21 = inttoptr i64 %19 to ptr
  %22 = call ptr @wcscpy(ptr %21, ptr %20)
  %23 = inttoptr i64 %19 to ptr
  call void @printLine(ptr %23)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %1, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_936ee, label %dec_label_pc_936e9

dec_label_pc_936e9:                               ; preds = %dec_label_pc_9367d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_936ee

dec_label_pc_936ee:                               ; preds = %dec_label_pc_936e9, %dec_label_pc_9367d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_9390d:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  store i64 ptrtoint (ptr @global_var_bf700 to i64), ptr %1, align 8
  ret i64 %0
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

