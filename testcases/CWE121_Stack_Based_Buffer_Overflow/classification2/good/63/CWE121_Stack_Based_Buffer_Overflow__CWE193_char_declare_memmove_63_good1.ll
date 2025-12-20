define void @anon1() local_unnamed_addr {
dec_label_pc_393e5:
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store ptr %1, ptr %stack_var_-40, align 8
  store i8 0, ptr %1, align 8
  call void @anon0(ptr nonnull %stack_var_-40)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_39430, label %dec_label_pc_3942b

dec_label_pc_3942b:                               ; preds = %dec_label_pc_393e5
  call void @__stack_chk_fail()
  br label %dec_label_pc_39430

dec_label_pc_39430:                               ; preds = %dec_label_pc_3942b, %dec_label_pc_393e5
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_394cf:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = bitcast ptr %dataPtr to ptr
  %5 = call ptr @memmove(ptr %4, ptr nonnull %stack_var_-27, i32 %3)
  %6 = bitcast ptr %dataPtr to ptr
  call void @printLine(ptr %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_39555, label %dec_label_pc_39550

dec_label_pc_39550:                               ; preds = %dec_label_pc_394cf
  call void @__stack_chk_fail()
  br label %dec_label_pc_39555

dec_label_pc_39555:                               ; preds = %dec_label_pc_39550, %dec_label_pc_394cf
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

