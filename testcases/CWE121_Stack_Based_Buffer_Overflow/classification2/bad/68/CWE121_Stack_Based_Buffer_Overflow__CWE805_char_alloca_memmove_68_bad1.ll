@global_var_1000 = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_memmove_68_badData = external local_unnamed_addr global i64
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_25665:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_256ae

dec_label_pc_256ae:                               ; preds = %dec_label_pc_256ae, %dec_label_pc_25665
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_256c5, label %dec_label_pc_256ae

dec_label_pc_256c5:                               ; preds = %dec_label_pc_256ae
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_25730

dec_label_pc_25730:                               ; preds = %dec_label_pc_25730, %dec_label_pc_256c5
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_25747, label %dec_label_pc_25730

dec_label_pc_25747:                               ; preds = %dec_label_pc_25730
  store i8 0, ptr %7, align 16
  store i64 %6, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_memmove_68_badData, align 8
  call void @anon1()
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_257bd, label %dec_label_pc_257b8

dec_label_pc_257b8:                               ; preds = %dec_label_pc_25747
  call void @__stack_chk_fail()
  br label %dec_label_pc_257bd

dec_label_pc_257bd:                               ; preds = %dec_label_pc_257b8, %dec_label_pc_25747
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2592e:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_memmove_68_badData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-120, i32 100)
  %5 = add i64 %1, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_259b2, label %dec_label_pc_259ad

dec_label_pc_259ad:                               ; preds = %dec_label_pc_2592e
  call void @__stack_chk_fail()
  br label %dec_label_pc_259b2

dec_label_pc_259b2:                               ; preds = %dec_label_pc_259ad, %dec_label_pc_2592e
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

