@CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_ncpy_68_badData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_3d710:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store i8 0, ptr %1, align 8
  %2 = ptrtoint ptr %stack_var_-27 to i64
  store i64 %2, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_ncpy_68_badData, align 8
  call void @anon1()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_3d764, label %dec_label_pc_3d75f

dec_label_pc_3d75f:                               ; preds = %dec_label_pc_3d710
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d764

dec_label_pc_3d764:                               ; preds = %dec_label_pc_3d75f, %dec_label_pc_3d710
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3d7d1:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_declare_ncpy_68_badData, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = inttoptr i64 %1 to ptr
  %6 = call ptr @strncpy(ptr %5, ptr nonnull %2, i32 %4)
  call void @printLine(ptr %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_3d853, label %dec_label_pc_3d84e

dec_label_pc_3d84e:                               ; preds = %dec_label_pc_3d7d1
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d853

dec_label_pc_3d853:                               ; preds = %dec_label_pc_3d84e, %dec_label_pc_3d7d1
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

