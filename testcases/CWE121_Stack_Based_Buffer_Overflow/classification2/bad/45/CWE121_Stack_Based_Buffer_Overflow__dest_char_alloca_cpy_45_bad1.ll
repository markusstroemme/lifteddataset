@CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cpy_45_badData = external local_unnamed_addr global i64
@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_16083:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cpy_45_badData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strcpy(ptr %3, ptr nonnull %4)
  call void @printLine(ptr %3)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_160f7, label %dec_label_pc_160f2

dec_label_pc_160f2:                               ; preds = %dec_label_pc_16083
  call void @__stack_chk_fail()
  br label %dec_label_pc_160f7

dec_label_pc_160f7:                               ; preds = %dec_label_pc_160f2, %dec_label_pc_16083
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_160f9:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_16142

dec_label_pc_16142:                               ; preds = %dec_label_pc_16142, %dec_label_pc_160f9
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_16159, label %dec_label_pc_16142

dec_label_pc_16159:                               ; preds = %dec_label_pc_16142
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_161c4

dec_label_pc_161c4:                               ; preds = %dec_label_pc_161c4, %dec_label_pc_16159
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_161db, label %dec_label_pc_161c4

dec_label_pc_161db:                               ; preds = %dec_label_pc_161c4
  store i8 0, ptr %7, align 16
  store i64 %6, ptr @CWE121_Stack_Based_Buffer_Overflow__dest_char_alloca_cpy_45_badData, align 8
  call void @anon1()
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_16251, label %dec_label_pc_1624c

dec_label_pc_1624c:                               ; preds = %dec_label_pc_161db
  call void @__stack_chk_fail()
  br label %dec_label_pc_16251

dec_label_pc_16251:                               ; preds = %dec_label_pc_1624c, %dec_label_pc_161db
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

