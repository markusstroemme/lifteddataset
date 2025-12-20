@global_var_1000 = external global ptr
@global_var_b99cc = external constant [21 x i8]
@global_var_b99e8 = external constant [43 x i8]
@global_var_fff = external global i32

define i32 @staticReturnsTrue.990() local_unnamed_addr {
dec_label_pc_5df3f:
  ret i32 1
}

define i32 @staticReturnsFalse.991() local_unnamed_addr {
dec_label_pc_5df4e:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5e2dc:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = call i32 @staticReturnsFalse.991()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5e31e, label %dec_label_pc_5e30d

dec_label_pc_5e30d:                               ; preds = %dec_label_pc_5e2dc
  call void @printLine(ptr @global_var_b99cc)
  br label %dec_label_pc_5e329

dec_label_pc_5e31e:                               ; preds = %dec_label_pc_5e2dc
  store ptr @global_var_b99e8, ptr %stack_var_-40, align 8
  br label %dec_label_pc_5e329

dec_label_pc_5e329:                               ; preds = %dec_label_pc_5e31e, %dec_label_pc_5e30d
  %3 = call i32 @staticReturnsTrue.990()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_5e3f7, label %dec_label_pc_5e33b

dec_label_pc_5e33b:                               ; preds = %dec_label_pc_5e329
  %5 = ptrtoint ptr %stack_var_-40 to i64
  %6 = load ptr, ptr %stack_var_-40, align 8
  %7 = call i32 @strlen(ptr %6)
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, 24
  %10 = udiv i64 %9, 16
  %11 = mul i64 %10, 16
  %12 = and i64 %11, -4096
  %13 = sub i64 %5, %12
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5e384

dec_label_pc_5e384:                               ; preds = %dec_label_pc_5e384, %dec_label_pc_5e33b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %14 = icmp eq i64 %rsp.0.reload, %13
  %15 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %15, ptr %rsp.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_5e39b, label %dec_label_pc_5e384

dec_label_pc_5e39b:                               ; preds = %dec_label_pc_5e384
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %16 = and i64 %11, %constexpr
  %17 = sub nsw i64 15, %16
  %18 = add i64 %17, %13
  %19 = and i64 %18, -16
  %20 = load ptr, ptr %stack_var_-40, align 8
  %21 = inttoptr i64 %19 to ptr
  %22 = call ptr @strcpy(ptr %21, ptr %20)
  call void @printLine(ptr %21)
  br label %dec_label_pc_5e3f7

dec_label_pc_5e3f7:                               ; preds = %dec_label_pc_5e39b, %dec_label_pc_5e329
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_5e40c, label %dec_label_pc_5e407

dec_label_pc_5e407:                               ; preds = %dec_label_pc_5e3f7
  call void @__stack_chk_fail()
  br label %dec_label_pc_5e40c

dec_label_pc_5e40c:                               ; preds = %dec_label_pc_5e407, %dec_label_pc_5e3f7
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

