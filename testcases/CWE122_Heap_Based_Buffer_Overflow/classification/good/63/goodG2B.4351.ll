@global_var_7c820 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_280e2:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_28126, label %dec_label_pc_2811c

dec_label_pc_2811c:                               ; preds = %dec_label_pc_280e2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_28126:                               ; preds = %dec_label_pc_280e2
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_28147, label %dec_label_pc_28142

dec_label_pc_28142:                               ; preds = %dec_label_pc_28126
  call void @__stack_chk_fail()
  br label %dec_label_pc_28147

dec_label_pc_28147:                               ; preds = %dec_label_pc_28142, %dec_label_pc_28126
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_281ff:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 50)
  %4 = bitcast ptr %dataPtr to ptr
  %5 = call ptr @memcpy(ptr %4, ptr nonnull %stack_var_-424, i32 400)
  %6 = trunc i64 %1 to i32
  call void @printIntLine(i32 %6)
  call void @free(ptr %4)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %2, %7
  br i1 %8, label %dec_label_pc_2829e, label %dec_label_pc_28299

dec_label_pc_28299:                               ; preds = %dec_label_pc_281ff
  call void @__stack_chk_fail()
  br label %dec_label_pc_2829e

dec_label_pc_2829e:                               ; preds = %dec_label_pc_28299, %dec_label_pc_281ff
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

