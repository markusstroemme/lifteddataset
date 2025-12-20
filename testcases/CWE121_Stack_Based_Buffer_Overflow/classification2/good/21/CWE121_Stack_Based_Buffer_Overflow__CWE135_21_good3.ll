@global_var_1000 = external global ptr
@goodG2BStatic = external local_unnamed_addr global i32
@global_var_ba418 = external constant [43 x i8]
@global_var_fff = external global i32

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_61c0e:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @goodG2BStatic, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_61cf7, label %dec_label_pc_61c3b

dec_label_pc_61c3b:                               ; preds = %dec_label_pc_61c0e
  %3 = ptrtoint ptr %stack_var_-56 to i64
  %4 = call i32 @strlen(ptr %data)
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, 24
  %7 = udiv i64 %6, 16
  %8 = mul i64 %7, 16
  %9 = and i64 %8, -4096
  %10 = sub i64 %3, %9
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_61c84

dec_label_pc_61c84:                               ; preds = %dec_label_pc_61c84, %dec_label_pc_61c3b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %11 = icmp eq i64 %rsp.0.reload, %10
  %12 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %12, ptr %rsp.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_61c9b, label %dec_label_pc_61c84

dec_label_pc_61c9b:                               ; preds = %dec_label_pc_61c84
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %13 = and i64 %8, %constexpr
  %14 = sub nsw i64 15, %13
  %15 = add i64 %14, %10
  %16 = and i64 %15, -16
  %17 = inttoptr i64 %16 to ptr
  %18 = call ptr @strcpy(ptr %17, ptr %data)
  call void @printLine(ptr %17)
  br label %dec_label_pc_61cf7

dec_label_pc_61cf7:                               ; preds = %dec_label_pc_61c9b, %dec_label_pc_61c0e
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_61d0c, label %dec_label_pc_61d07

dec_label_pc_61d07:                               ; preds = %dec_label_pc_61cf7
  call void @__stack_chk_fail()
  br label %dec_label_pc_61d0c

dec_label_pc_61d0c:                               ; preds = %dec_label_pc_61d07, %dec_label_pc_61cf7
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_61d0e:
  store i32 1, ptr @goodG2BStatic, align 4
  call void @anon0(ptr @global_var_ba418)
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

