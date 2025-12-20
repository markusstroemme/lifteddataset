@CWE121_Stack_Based_Buffer_Overflow__dest_char_declare_cpy_68_badData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_1fecb:
  %dataBadBuffer_-128 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-128, align 8
  %4 = bitcast ptr %dataBadBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = load i64, ptr %4, align 8
  store i64 %7, ptr @CWE121_Stack_Based_Buffer_Overflow__dest_char_declare_cpy_68_badData, align 8
  call void @anon1()
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_1ff1f, label %dec_label_pc_1ff1a

dec_label_pc_1ff1a:                               ; preds = %dec_label_pc_1fecb
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ff1f

dec_label_pc_1ff1f:                               ; preds = %dec_label_pc_1ff1a, %dec_label_pc_1fecb
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1ff8c:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__dest_char_declare_cpy_68_badData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strcpy(ptr %3, ptr nonnull %4)
  call void @printLine(ptr %3)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_20000, label %dec_label_pc_1fffb

dec_label_pc_1fffb:                               ; preds = %dec_label_pc_1ff8c
  call void @__stack_chk_fail()
  br label %dec_label_pc_20000

dec_label_pc_20000:                               ; preds = %dec_label_pc_1fffb, %dec_label_pc_1ff8c
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

