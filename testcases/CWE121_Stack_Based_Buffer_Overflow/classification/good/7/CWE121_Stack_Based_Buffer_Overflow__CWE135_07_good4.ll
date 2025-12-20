@global_var_1000 = external global ptr
@global_var_b98f0 = external constant [43 x i8]
@global_var_fff = external global i32
@global_var_ef05c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5ddf1:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef05c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  %spec.store.select = select i1 %3, ptr null, ptr @global_var_b98f0
  store ptr %spec.store.select, ptr %stack_var_-40, align 8
  br i1 %3, label %dec_label_pc_5def5, label %dec_label_pc_5de39

dec_label_pc_5de39:                               ; preds = %dec_label_pc_5ddf1
  %4 = ptrtoint ptr %stack_var_-40 to i64
  %5 = call i32 @strlen(ptr %spec.store.select)
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, 24
  %8 = udiv i64 %7, 16
  %9 = mul i64 %8, 16
  %10 = and i64 %9, -4096
  %11 = sub i64 %4, %10
  store i64 %4, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5de82

dec_label_pc_5de82:                               ; preds = %dec_label_pc_5de82, %dec_label_pc_5de39
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %12 = icmp eq i64 %rsp.0.reload, %11
  %13 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %13, ptr %rsp.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_5de99, label %dec_label_pc_5de82

dec_label_pc_5de99:                               ; preds = %dec_label_pc_5de82
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %14 = and i64 %9, %constexpr
  %15 = sub nsw i64 15, %14
  %16 = add i64 %15, %11
  %17 = and i64 %16, -16
  %18 = load ptr, ptr %stack_var_-40, align 8
  %19 = inttoptr i64 %17 to ptr
  %20 = call ptr @strcpy(ptr %19, ptr %18)
  call void @printLine(ptr %19)
  br label %dec_label_pc_5def5

dec_label_pc_5def5:                               ; preds = %dec_label_pc_5de99, %dec_label_pc_5ddf1
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_5df0a, label %dec_label_pc_5df05

dec_label_pc_5df05:                               ; preds = %dec_label_pc_5def5
  call void @__stack_chk_fail()
  br label %dec_label_pc_5df0a

dec_label_pc_5df0a:                               ; preds = %dec_label_pc_5df05, %dec_label_pc_5def5
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

