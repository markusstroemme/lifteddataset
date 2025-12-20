@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6b40c:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataGoodBuffer_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6b455

dec_label_pc_6b455:                               ; preds = %dec_label_pc_6b455, %dec_label_pc_6b40c
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6b46c, label %dec_label_pc_6b455

dec_label_pc_6b46c:                               ; preds = %dec_label_pc_6b455
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-72, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_6b4d7

dec_label_pc_6b4d7:                               ; preds = %dec_label_pc_6b4d7, %dec_label_pc_6b46c
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_6b4ee, label %dec_label_pc_6b4d7

dec_label_pc_6b4ee:                               ; preds = %dec_label_pc_6b4d7
  store i8 0, ptr %7, align 16
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %10 = bitcast ptr %stack_var_-27 to ptr
  %11 = call ptr @strcpy(ptr %7, ptr nonnull %10)
  call void @printLine(ptr %7)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_6b596, label %dec_label_pc_6b591

dec_label_pc_6b591:                               ; preds = %dec_label_pc_6b4ee
  call void @__stack_chk_fail()
  br label %dec_label_pc_6b596

dec_label_pc_6b596:                               ; preds = %dec_label_pc_6b591, %dec_label_pc_6b4ee
  ret void
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

