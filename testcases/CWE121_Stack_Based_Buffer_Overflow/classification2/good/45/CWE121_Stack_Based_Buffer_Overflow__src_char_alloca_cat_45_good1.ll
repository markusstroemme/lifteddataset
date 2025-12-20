@CWE121_Stack_Based_Buffer_Overflow__src_char_alloca_cat_45_goodG2BData = external local_unnamed_addr global i64
@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_25af7:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__src_char_alloca_cat_45_goodG2BData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @strcat(ptr nonnull %2, ptr %3)
  call void @printLine(ptr %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_25b87, label %dec_label_pc_25b82

dec_label_pc_25b82:                               ; preds = %dec_label_pc_25af7
  call void @__stack_chk_fail()
  br label %dec_label_pc_25b87

dec_label_pc_25b87:                               ; preds = %dec_label_pc_25b82, %dec_label_pc_25af7
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_25b89:
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_25bd2

dec_label_pc_25bd2:                               ; preds = %dec_label_pc_25bd2, %dec_label_pc_25b89
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_25be9, label %dec_label_pc_25bd2

dec_label_pc_25be9:                               ; preds = %dec_label_pc_25bd2
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %5, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store i64 %5, ptr @CWE121_Stack_Based_Buffer_Overflow__src_char_alloca_cat_45_goodG2BData, align 8
  call void @anon0()
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_25c79, label %dec_label_pc_25c74

dec_label_pc_25c74:                               ; preds = %dec_label_pc_25be9
  call void @__stack_chk_fail()
  br label %dec_label_pc_25c79

dec_label_pc_25c79:                               ; preds = %dec_label_pc_25c74, %dec_label_pc_25be9
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

