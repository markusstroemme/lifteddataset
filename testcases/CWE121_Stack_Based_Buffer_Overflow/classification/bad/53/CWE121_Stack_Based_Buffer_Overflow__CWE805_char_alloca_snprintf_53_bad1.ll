@global_var_1000 = external global ptr
@global_var_81497 = external constant [3 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3ea03:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3ea4c

dec_label_pc_3ea4c:                               ; preds = %dec_label_pc_3ea4c, %dec_label_pc_3ea03
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3ea63, label %dec_label_pc_3ea4c

dec_label_pc_3ea63:                               ; preds = %dec_label_pc_3ea4c
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3eace

dec_label_pc_3eace:                               ; preds = %dec_label_pc_3eace, %dec_label_pc_3ea63
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_3eae5, label %dec_label_pc_3eace

dec_label_pc_3eae5:                               ; preds = %dec_label_pc_3eace
  store i8 0, ptr %7, align 16
  call void @anon1(ptr %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_3eb52, label %dec_label_pc_3eb4d

dec_label_pc_3eb4d:                               ; preds = %dec_label_pc_3eae5
  call void @__stack_chk_fail()
  br label %dec_label_pc_3eb52

dec_label_pc_3eb52:                               ; preds = %dec_label_pc_3eb4d, %dec_label_pc_3eae5
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_3ecba:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_3ecf8:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_3ed36:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %data, i32 100, ptr @global_var_81497, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %data)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_3edb4, label %dec_label_pc_3edaf

dec_label_pc_3edaf:                               ; preds = %dec_label_pc_3ed36
  call void @__stack_chk_fail()
  br label %dec_label_pc_3edb4

dec_label_pc_3edb4:                               ; preds = %dec_label_pc_3edaf, %dec_label_pc_3ed36
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

