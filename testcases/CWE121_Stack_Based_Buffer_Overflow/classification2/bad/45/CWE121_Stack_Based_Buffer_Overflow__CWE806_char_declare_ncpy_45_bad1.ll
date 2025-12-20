@CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_ncpy_45_badData = external local_unnamed_addr global i64

define void @anon1() local_unnamed_addr {
dec_label_pc_5a0ff:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_ncpy_45_badData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call i32 @strlen(ptr %2)
  %4 = bitcast ptr %stack_var_-72 to ptr
  %5 = call ptr @strncpy(ptr nonnull %4, ptr %2, i32 %3)
  call void @printLine(ptr %2)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_5a1a2, label %dec_label_pc_5a19d

dec_label_pc_5a19d:                               ; preds = %dec_label_pc_5a0ff
  call void @__stack_chk_fail()
  br label %dec_label_pc_5a1a2

dec_label_pc_5a1a2:                               ; preds = %dec_label_pc_5a19d, %dec_label_pc_5a0ff
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5a1a4:
  %dataBuffer_-128 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [100 x i8] undef, i8 %2, 0
  store [100 x i8] %3, ptr %dataBuffer_-128, align 8
  %4 = bitcast ptr %dataBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 99)
  %8 = add i64 %5, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = load i64, ptr %4, align 8
  store i64 %10, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_ncpy_45_badData, align 8
  call void @anon1()
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_5a212, label %dec_label_pc_5a20d

dec_label_pc_5a20d:                               ; preds = %dec_label_pc_5a1a4
  call void @__stack_chk_fail()
  br label %dec_label_pc_5a212

dec_label_pc_5a212:                               ; preds = %dec_label_pc_5a20d, %dec_label_pc_5a1a4
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

