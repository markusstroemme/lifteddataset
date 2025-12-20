@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon3() local_unnamed_addr {
dec_label_pc_1759a:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_175e3

dec_label_pc_175e3:                               ; preds = %dec_label_pc_175e3, %dec_label_pc_1759a
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_175fa, label %dec_label_pc_175e3

dec_label_pc_175fa:                               ; preds = %dec_label_pc_175e3
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_17665

dec_label_pc_17665:                               ; preds = %dec_label_pc_17665, %dec_label_pc_175fa
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_1767c, label %dec_label_pc_17665

dec_label_pc_1767c:                               ; preds = %dec_label_pc_17665
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %10 = add i64 %4, %constexpr5
  %11 = and i64 %10, -16
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 16
  call void @anon0(ptr %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %1, %13
  br i1 %14, label %dec_label_pc_176e9, label %dec_label_pc_176e4

dec_label_pc_176e4:                               ; preds = %dec_label_pc_1767c
  call void @__stack_chk_fail()
  br label %dec_label_pc_176e9

dec_label_pc_176e9:                               ; preds = %dec_label_pc_176e4, %dec_label_pc_1767c
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_1771f:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_1775d:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_177f9:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = bitcast ptr %data to ptr
  %5 = call ptr @memcpy(ptr %4, ptr nonnull %stack_var_-27, i32 %3)
  call void @printLine(ptr %data)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_17874, label %dec_label_pc_1786f

dec_label_pc_1786f:                               ; preds = %dec_label_pc_177f9
  call void @__stack_chk_fail()
  br label %dec_label_pc_17874

dec_label_pc_17874:                               ; preds = %dec_label_pc_1786f, %dec_label_pc_177f9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

