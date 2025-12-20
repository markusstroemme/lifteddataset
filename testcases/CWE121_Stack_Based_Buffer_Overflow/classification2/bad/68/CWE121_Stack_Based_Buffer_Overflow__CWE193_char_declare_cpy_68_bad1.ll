@CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_cpy_68_badData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_2e13f:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store i8 0, ptr %1, align 8
  %2 = ptrtoint ptr %stack_var_-27 to i64
  store i64 %2, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_cpy_68_badData, align 8
  call void @anon1()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_2e193, label %dec_label_pc_2e18e

dec_label_pc_2e18e:                               ; preds = %dec_label_pc_2e13f
  call void @__stack_chk_fail()
  br label %dec_label_pc_2e193

dec_label_pc_2e193:                               ; preds = %dec_label_pc_2e18e, %dec_label_pc_2e13f
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2e200:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_cpy_68_badData, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call ptr @strcpy(ptr %2, ptr nonnull %3)
  call void @printLine(ptr %2)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_2e272, label %dec_label_pc_2e26d

dec_label_pc_2e26d:                               ; preds = %dec_label_pc_2e200
  call void @__stack_chk_fail()
  br label %dec_label_pc_2e272

dec_label_pc_2e272:                               ; preds = %dec_label_pc_2e26d, %dec_label_pc_2e200
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

