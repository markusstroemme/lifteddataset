@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_16fb1:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_16ffa

dec_label_pc_16ffa:                               ; preds = %dec_label_pc_16ffa, %dec_label_pc_16fb1
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_17011, label %dec_label_pc_16ffa

dec_label_pc_17011:                               ; preds = %dec_label_pc_16ffa
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_1707c

dec_label_pc_1707c:                               ; preds = %dec_label_pc_1707c, %dec_label_pc_17011
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_17093, label %dec_label_pc_1707c

dec_label_pc_17093:                               ; preds = %dec_label_pc_1707c
  store i8 0, ptr %7, align 16
  call void @anon1(ptr %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_17100, label %dec_label_pc_170fb

dec_label_pc_170fb:                               ; preds = %dec_label_pc_17093
  call void @__stack_chk_fail()
  br label %dec_label_pc_17100

dec_label_pc_17100:                               ; preds = %dec_label_pc_170fb, %dec_label_pc_17093
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_17268:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_172a6:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_172e4:
  call void @anon4(ptr %data)
  ret void
}

define void @anon4(ptr %data) local_unnamed_addr {
dec_label_pc_17322:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call ptr @strcpy(ptr %data, ptr nonnull %2)
  call void @printLine(ptr %data)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1738f, label %dec_label_pc_1738a

dec_label_pc_1738a:                               ; preds = %dec_label_pc_17322
  call void @__stack_chk_fail()
  br label %dec_label_pc_1738f

dec_label_pc_1738f:                               ; preds = %dec_label_pc_1738a, %dec_label_pc_17322
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

