@global_var_1000 = external global ptr
@global_var_bb338 = external constant [43 x i32]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_65f69:
  call void @anon1(i64 ptrtoint (ptr @global_var_bb338 to i64))
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_6602a:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = inttoptr i64 %myStruct to ptr
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @strlen(ptr %1)
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = add nsw i64 %5, 27
  %7 = udiv i64 %6, 16
  %8 = mul i64 %7, 16
  %9 = and i64 %8, -4096
  %10 = sub i64 %0, %9
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6609e

dec_label_pc_6609e:                               ; preds = %dec_label_pc_6609e, %dec_label_pc_6602a
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %11 = icmp eq i64 %rsp.0.reload, %10
  %12 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %12, ptr %rsp.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_660b5, label %dec_label_pc_6609e

dec_label_pc_660b5:                               ; preds = %dec_label_pc_6609e
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %13 = and i64 %8, %constexpr
  %14 = sub nsw i64 15, %13
  %15 = add i64 %14, %10
  %16 = and i64 %15, -16
  %17 = inttoptr i64 %16 to ptr
  %18 = inttoptr i64 %myStruct to ptr
  %19 = call ptr @wcscpy(ptr %17, ptr %18)
  %20 = inttoptr i64 %16 to ptr
  call void @printLine(ptr %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %2, %21
  br i1 %22, label %dec_label_pc_66126, label %dec_label_pc_66121

dec_label_pc_66121:                               ; preds = %dec_label_pc_660b5
  call void @__stack_chk_fail()
  br label %dec_label_pc_66126

dec_label_pc_66126:                               ; preds = %dec_label_pc_66121, %dec_label_pc_660b5
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

