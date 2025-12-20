@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_ba618 = external constant [2 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_625ee:
  %rsp.0.reg2mem = alloca i64, align 8
  %dataPtr1_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataPtr1_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %dataPtr1_-72 to ptr
  store i64 ptrtoint (ptr @global_var_ba618 to i64), ptr %2, align 8
  %3 = call i32 @strlen(ptr @global_var_ba618)
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = add nsw i64 %5, 27
  %7 = udiv i64 %6, 16
  %8 = mul i64 %7, 16
  %9 = and i64 %8, -4096
  %10 = sub i64 %0, %9
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6269a

dec_label_pc_6269a:                               ; preds = %dec_label_pc_6269a, %dec_label_pc_625ee
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %11 = icmp eq i64 %rsp.0.reload, %10
  %12 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %12, ptr %rsp.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_626b1, label %dec_label_pc_6269a

dec_label_pc_626b1:                               ; preds = %dec_label_pc_6269a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %13 = and i64 %8, %constexpr
  %14 = sub nsw i64 15, %13
  %15 = add i64 %14, %10
  %16 = and i64 %15, -16
  %17 = inttoptr i64 %16 to ptr
  %18 = call ptr @wcscpy(ptr %17, ptr @global_var_ba618)
  %19 = inttoptr i64 %16 to ptr
  call void @printLine(ptr %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_62722, label %dec_label_pc_6271d

dec_label_pc_6271d:                               ; preds = %dec_label_pc_626b1
  call void @__stack_chk_fail()
  br label %dec_label_pc_62722

dec_label_pc_62722:                               ; preds = %dec_label_pc_6271d, %dec_label_pc_626b1
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

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

