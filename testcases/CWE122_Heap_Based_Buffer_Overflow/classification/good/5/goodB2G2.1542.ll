@global_var_ec018 = external local_unnamed_addr global i32
@global_var_bd304 = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_fde9:
  %stack_var_-32 = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec018, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_fec3, label %dec_label_pc_fe07

dec_label_pc_fe07:                                ; preds = %dec_label_pc_fde9
  %2 = call ptr @malloc(i32 200)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-32, align 8
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_fe54, label %dec_label_pc_fe1c

dec_label_pc_fe1c:                                ; preds = %dec_label_pc_fe07
  call void @exit(i32 -1)
  unreachable

dec_label_pc_fe54:                                ; preds = %dec_label_pc_fe07
  %6 = call ptr @wmemset(ptr %3, i32 65, i32 49)
  %7 = ptrtoint ptr %2 to i64
  %8 = add i64 %7, 196
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %.pr = load i32, ptr @global_var_ec018, align 4
  %10 = icmp eq i32 %.pr, 0
  br i1 %10, label %dec_label_pc_fec3, label %dec_label_pc_fe5e

dec_label_pc_fe5e:                                ; preds = %dec_label_pc_fe54
  %11 = load ptr, ptr %stack_var_-32, align 8
  %12 = call i32 @wcslen(ptr %11)
  %13 = add i32 %12, 1
  %14 = call ptr @calloc(i32 %13, i32 4)
  %15 = icmp eq ptr %14, null
  %16 = icmp eq i1 %15, false
  br i1 %16, label %dec_label_pc_fe98, label %dec_label_pc_fe8e

dec_label_pc_fe8e:                                ; preds = %dec_label_pc_fe5e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_fe98:                                ; preds = %dec_label_pc_fe5e
  %17 = bitcast ptr %14 to ptr
  %18 = call ptr @wcscpy(ptr %17, ptr %11)
  call void @printWLine(ptr %17)
  call void @free(ptr %14)
  br label %dec_label_pc_fec3

dec_label_pc_fec3:                                ; preds = %dec_label_pc_fde9, %dec_label_pc_fe98, %dec_label_pc_fe54
  ret void
}

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_9feb2:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9fee4, label %dec_label_pc_9fec9

dec_label_pc_9fec9:                               ; preds = %dec_label_pc_9feb2
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_bd304)
  br label %dec_label_pc_9fee4

dec_label_pc_9fee4:                               ; preds = %dec_label_pc_9fec9, %dec_label_pc_9feb2
  ret void
}

declare ptr @calloc(i32, i32) local_unnamed_addr

declare i32 @wcslen(ptr) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

